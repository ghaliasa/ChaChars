// ignore_for_file: unnecessary_import

import 'dart:math';
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:vibration/vibration.dart';

import '../controllers/ChangeController.dart';
import '../models/arch.dart';
import '../models/arch_angle.dart';
import '../models/circle.dart';
import '../models/point.dart';
import '../static/static.dart';

class Char {
  late int _id;
  late String image;
  late String _name;
  late List<Arch> _arches = [];
  late List<Point> _points = [];
  late List<Circle> _circles = [];
  late Map map = {};
  late Map _lineMap;
  late int currentIndex;

  bool outOfCircle = true;

  bool outOfArch = true;
  bool outOfLine = true;
  bool isLearn = false;
  bool isTrain = false;
  bool isTest = false;
  double rate = 0;
  double rateTrain = 0;
  double rateTest = 0;
  List<double> rates = [];

  AudioPlayer player = AudioPlayer();

  Char.empty();

  Char(
    this._id,
    this._name,
    this.image,
    this._points,
    this._arches,
    this._circles,
    this._lineMap,
  ) {
    initMap();
  }

  List<Point> get getPoints => _points;

  set setPoints(List<Point> value) {
    _points = value;
  }

  List<Arch> get getArches => _arches;

  set setArches(List<Arch> value) {
    _arches = value;
  }

  String get getImage => image;

  set setImage(String value) {
    image = value;
  }

  String get getName => _name;

  set setName(String value) {
    _name = value;
  }

  int get getId => _id;

  set setId(int value) {
    _id = value;
  }

  List<Circle> get getCircles => _circles;

  set setCircles(List<Circle> value) {
    _circles = value;
  }

  Map get getLineMap => _lineMap;

  set setLineMap(Map value) {
    _lineMap = value;
  }

  void initMap() {
    for (int i = 0; i < _points.length; i++) {
      map.addAll({i: _points[i].getOffset});
    }
    c = Get.put(ChangeController());
    c.fp.value = _points.length * 10.5;
    c.fpCounter.value = 0;
    currentIndex = 0;
  }

  void draw(
    Canvas canvas,
    Paint paint,
    bool showLines,
    bool showPoints,
    int counter,
  ) {
    if (showPoints) {
      if (_points.isNotEmpty) {
        for (Point point in _points) {
          point.draw(canvas);
        }
      }
    }
    if (showLines) {
      if (counter == 6) {
        if (_arches.isNotEmpty) {
          for (int i = 0; i < _points.length; i++) {
            if (i + 1 < _points.length) {
              for (Arch arch in _arches) {
                arch.draw(canvas, greyOp, 15);
              }
            } else {
              break;
            }
          }
        }

        if (_circles.isNotEmpty) {
          for (Circle circle in _circles) {
            circle.draw(canvas, greyOp, 20);
          }
        }

        for (int c = 1; c < _points.length; c++) {
          if (!(getLineMap[c] != null && getLineMap[c] == c + 1)) {
            canvas.drawLine(
              _points[c - 1].getOffset,
              _points[c].getOffset,
              Paint()
                ..color = Colors.grey.withOpacity(0.95)
                ..strokeWidth = 30
                ..strokeCap = StrokeCap.round,
            );
          }
        }
      }
    }
  }

  int check(
    Canvas canvas,
    Offset lastPointPrinted,
    int counter,
  ) {
    c.fpCounter.value += 2;
    if (counter == 6) {
      c.innerCounter.value = 3;
    } else if (counter == 7) {
      c.innerCounter.value = 1;
    } else {
      c.innerCounter.value = counter;
    }
    double cx = 0, cy = 0, r = 0;
    if (map.isEmpty) {
      if (c.loop.value < c.innerCounter.value) {
        if (c.fpCounter.value < c.fp.value) {
          win.play(AssetSource("start.wav"));
          return 130;
        }
        c.loop.value++;
        initMap();
        rates.add(c.rate.value);
        if (counter != 6) {
          if (c.rate.value >= 8) {
            controllerCenter.play();
            win.play(AssetSource("win.wav"));
            excellent.play(AssetSource("excellent.mp3"));
          } else if (c.rate.value >= 5 && c.rate.value <= 7.5) {
            start.play(AssetSource("start.wav"));
            good.play(AssetSource("good.mp3"));
          } else {
            fail.play(AssetSource("fail.wav"));
            goodLuck.play(AssetSource("goodluck.mp3"));
          }
        }
        c.rate.value = 10;
        return 1;
      } else {
        if (rates.length < c.innerCounter.value) {
          rates.add(c.rate.value);
        }
        if (counter != 6) {
          if (c.rate.value >= 8) {
            controllerCenter.play();
            win.play(AssetSource("win.wav"));
            excellent.play(AssetSource("excellent.mp3"));
          } else if (c.rate.value >= 5 && c.rate.value <= 7.5) {
            start.play(AssetSource("start.wav"));
            good.play(AssetSource("good.mp3"));
          } else {
            fail.play(AssetSource("fail.wav"));
            goodLuck.play(AssetSource("goodluck.mp3"));
          }
        }
        double sum = 0;
        for (double d in rates) {
          sum += d;
        }
        if (counter == 6) {
          isLearn = true;
          box.write(
            "isLearn$_name",
            isLearn,
          );
        }
        if (counter > 0 && counter < 6) {
          rateTrain = sum / rates.length;
          isTrain = true;
          box.write(
            "rateTrain$_name",
            rateTrain,
          );
          box.write(
            "isTrain$_name",
            isTrain,
          );
        }
        if (counter == 7) {
          rateTest = sum / rates.length;
          isTest = true;
          box.write(
            "rateTest$_name",
            rateTest,
          );
          box.write(
            "isTest$_name",
            isTest,
          );
        }
        return 10;
      }
    } else {
      if (counter == 7 && c.rate.value <= 0) {
        fail.play(AssetSource("fail.wav"));
        return 5;
      }
      if (counter > 0 && counter < 6 && c.rate.value <= 0) {
        fail.play(AssetSource("fail.wav"));
        return 6;
      }

      if (map.containsKey(currentIndex)) {
        /* this condition for check if pass into circle or not */

        if (lastPointPrinted.dx.toDouble() < map[currentIndex].dx + 20 &&
            lastPointPrinted.dx.toDouble() > map[currentIndex].dx - 20 &&
            lastPointPrinted.dy.toDouble() < map[currentIndex].dy + 20 &&
            lastPointPrinted.dy.toDouble() > map[currentIndex].dy - 20) {
          map.remove(currentIndex);
          currentIndex = currentIndex + 1;
        }

        /* this condition for check if pass into line between two circles or not */

        if (currentIndex - 1 >= 0 && currentIndex < _points.length) {
          /*                          */
          /*        Check Lines       */
          /*                          */

          if (!(getLineMap[currentIndex] != null &&
              getLineMap[currentIndex] == currentIndex + 1)) {
            if (counter != 7) {
              canvas.drawLine(
                _points[currentIndex - 1].getOffset,
                _points[currentIndex].getOffset,
                Paint()
                  ..color = Colors.white54
                  ..strokeWidth = 20,
              );
            }
            double m = mail(_points[currentIndex - 1].getOffset,
                _points[currentIndex].getOffset);
            double b = _points[currentIndex - 1].getOffset.dy -
                m * _points[currentIndex - 1].getOffset.dx;
            /*    |              */
            /*    |   &    ___   */
            /*    |              */
            if (m == 0) {
              /*    |    */
              /*    |    */
              /*    |    */
              if (lastPointPrinted.dx.toInt() >=
                      _points[currentIndex].getOffset.dx.toInt() - 25 &&
                  lastPointPrinted.dx.toInt() <=
                      _points[currentIndex].getOffset.dx.toInt() + 25) {
                /*    1    */
                /*    |   */
                /*    2    */
                if (lastPointPrinted.dy <=
                        _points[currentIndex].getOffset.dy + 50 &&
                    lastPointPrinted.dy >=
                        _points[currentIndex - 1].getOffset.dy - 50) {
                  outOfLine = true;
                }
                /*    2    */
                /*    |   */
                /*    1    */
                if (lastPointPrinted.dy <=
                        _points[currentIndex - 1].getOffset.dy &&
                    lastPointPrinted.dy >= _points[currentIndex].getOffset.dy) {
                  outOfLine = true;
                }
              }
              /*        */
              /*   ___  */
              /*        */
              else if (lastPointPrinted.dy.toInt() <=
                      (m * lastPointPrinted.dx + b).toInt() + 20 &&
                  lastPointPrinted.dy.toInt() >=
                      (m * lastPointPrinted.dx + b).toInt() - 20) {
                /*  1-->2  */
                if (lastPointPrinted.dx <= _points[currentIndex].getOffset.dx &&
                    lastPointPrinted.dx >=
                        _points[currentIndex - 1].getOffset.dx) {
                  outOfLine = true;
                }
                /*  2<--1  */
                if (lastPointPrinted.dx <=
                        _points[currentIndex - 1].getOffset.dx &&
                    lastPointPrinted.dx >= _points[currentIndex].getOffset.dx) {
                  outOfLine = true;
                }
              } else {
                if (outOfLine) {
                  if (counter != 6) {
                    c.rate.value -= 0.5;
                  }
                  Vibration.vibrate(duration: 500);
                  error.play(AssetSource("error.wav"));
                  outOfLine = false;
                }
              }
            }
            /*  \      */
            /*   \     */
            /*    \    */
            if (m > 0) {
              /*   1      */
              /*    \     */
              /*     2    */
              if (lastPointPrinted.dy.toInt() <=
                      (m * lastPointPrinted.dx + b).toInt() + 50 &&
                  lastPointPrinted.dy.toInt() >=
                      (m * lastPointPrinted.dx + b).toInt() - 50) {
                if (lastPointPrinted.dy <=
                        _points[currentIndex].getOffset.dy + 10 &&
                    lastPointPrinted.dy >=
                        _points[currentIndex - 1].getOffset.dy - 10) {
                  outOfLine = true;
                }
              } else {
                if (outOfLine) {
                  if (counter != 6) {
                    c.rate.value -= 0.5;
                  }
                  Vibration.vibrate(duration: 500);
                  error.play(AssetSource("error.wav"));
                  outOfLine = false;
                }
              }
            }
            /*     /    */
            /*    /     */
            /*   /      */
            if (m < 0) {
              if (lastPointPrinted.dy.toInt() <=
                      (m * lastPointPrinted.dx + b).toInt() + 40 &&
                  lastPointPrinted.dy.toInt() >=
                      (m * lastPointPrinted.dx + b).toInt() - 40) {
                /*     2   */
                /*    /    */
                /*  1      */
                if (lastPointPrinted.dy <=
                        _points[currentIndex - 1].getOffset.dy + 10 &&
                    lastPointPrinted.dy >=
                        _points[currentIndex].getOffset.dy - 10) {
                  outOfLine = true;
                }

                /*     1   */
                /*    /    */
                /*  2      */
                if (lastPointPrinted.dy <=
                        _points[currentIndex].getOffset.dy + 10 &&
                    lastPointPrinted.dy >=
                        _points[currentIndex - 1].getOffset.dy - 10) {
                  outOfLine = true;
                }
              } else {
                if (outOfLine) {
                  if (counter != 6) {
                    c.rate.value -= 0.5;
                  }
                  Vibration.vibrate(duration: 500);
                  error.play(AssetSource("error.wav"));
                  outOfLine = false;
                }
              }
            }
          }

          /*                          */
          /*        Check Arch        */
          /*                          */

          if (_arches.isNotEmpty) {
            for (Arch arch in _arches) {
              if (arch.getPoint1.getId == currentIndex) {
                if (counter != 7) {
                  arch.draw(
                    canvas,
                    Paint()..color = Colors.white.withOpacity(0.1),
                    10,
                  );
                }

                if (arch.getPoint1.getOffset.dx ==
                    arch.getPoint2.getOffset.dx) {
                  cx = arch.getPoint1.getOffset.dx;
                  cy = (arch.getPoint1.getOffset.dy +
                          arch.getPoint2.getOffset.dy) /
                      2;
                  r = dist(arch.getPoint1.getOffset, Offset(cx, cy));
                }
                if (arch.getPoint1.getOffset.dy ==
                    arch.getPoint2.getOffset.dy) {
                  cx = (arch.getPoint1.getOffset.dx +
                          arch.getPoint2.getOffset.dx) /
                      2;
                  cy = arch.getPoint1.getOffset.dy;
                  r = dist(arch.getPoint1.getOffset, Offset(cx, cy));
                }
                if (((pow((lastPointPrinted.dx - cx), 2) +
                            pow((lastPointPrinted.dy - cy), 2)) <=
                        pow(r, 2) + (pow(r, 2) / 2.5)) &&
                    ((pow((lastPointPrinted.dx - cx), 2) +
                            pow((lastPointPrinted.dy - cy), 2)) >=
                        pow(r, 2) - (pow(r, 2) / 2))) {
                  switch (arch.getArchAngle) {
                    case ArchAngle.upToRightToBottom:
                      if (lastPointPrinted.dx >=
                          arch.getPoint1.getOffset.dx - 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.upToLeftToBottom:
                      if (lastPointPrinted.dx <=
                          arch.getPoint1.getOffset.dx + 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.rightToUpToLeft:
                      if (lastPointPrinted.dy <=
                          arch.getPoint1.getOffset.dy + 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.rightToBottomToLeft:
                      if (lastPointPrinted.dy >=
                          arch.getPoint1.getOffset.dy - 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.leftToUpToRight:
                      if (lastPointPrinted.dy <=
                          arch.getPoint1.getOffset.dy + 150) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.leftToBottomToRight:
                      if (lastPointPrinted.dy >=
                          arch.getPoint1.getOffset.dy - 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.bottomToLeftTop:
                      if (lastPointPrinted.dx <=
                          arch.getPoint1.getOffset.dx + 50) {
                        outOfArch = true;
                      }
                      break;
                    case ArchAngle.bottomToRightTop:
                      if (lastPointPrinted.dx <=
                          arch.getPoint1.getOffset.dx + 50) {
                        outOfArch = true;
                      }
                      break;
                  }
                } else {
                  if (outOfArch) {
                    if (counter != 6) {
                      c.rate.value -= 0.5;
                    }
                    Vibration.vibrate(duration: 500);
                    error.play(AssetSource("error.wav"));
                    outOfArch = false;
                  }
                }
              }
            }
          }

          /*                            */
          /*        Check Circles       */
          /*                            */

          if (_circles.isNotEmpty) {
            for (int i = 0; i < _circles.length; i++) {
              if (((pow(
                              (lastPointPrinted.dx -
                                  _circles[i].getPoint.getOffset.dx),
                              2) +
                          pow(
                              (lastPointPrinted.dy -
                                  _circles[i].getPoint.getOffset.dy),
                              2)) <=
                      (pow(_circles[i].getRadius, 2) +
                          (pow(_circles[i].getRadius, 2) / 3))) &&
                  ((pow(
                              (lastPointPrinted.dx -
                                  _circles[i].getPoint.getOffset.dx),
                              2) +
                          pow(
                              (lastPointPrinted.dy -
                                  _circles[i].getPoint.getOffset.dy),
                              2)) >=
                      (pow(_circles[i].getRadius, 2) -
                          (pow(_circles[i].getRadius, 2) / 3)))) {
                if (counter != 7) {
                  _circles[i].draw(canvas,
                      Paint()..color = Colors.white.withOpacity(0.2), 10);
                }
                outOfCircle = true;
              } else {
                if (outOfCircle) {
                  if (counter != 6) {
                    c.rate.value -= 0.5;
                  }
                  Vibration.vibrate(duration: 500);
                  error.play(AssetSource("error.wav"));
                  outOfCircle = false;
                }
              }
            }
          }
        }

        if (counter != 7) {
          if (currentIndex < _points.length) {
            drawGuideCount(canvas, _points[currentIndex].getId.toString(),
                _points[currentIndex].getOffset);
          }
        }
      }
      return 0;
    }
  }
}
