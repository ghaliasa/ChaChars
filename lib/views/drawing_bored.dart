import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ChangeController.dart';
import '../models/char.dart';
import '../static/static.dart';
import 'Home.dart';

Offset lastPointPrinted = const Offset(0, 0);
List<DrawingPoint> drawingPoints = [];

class DrawingBoard extends StatefulWidget {
  final Char char;
  final int counter;

  const DrawingBoard({
    Key? key,
    required this.char,
    required this.counter,
  }) : super(
          key: key,
        );

  @override
  // ignore: library_private_types_in_public_api
  _DrawingBoardState createState() => _DrawingBoardState();
}

double strokeWidth = 10;
late bool reTest;
late bool reTrain;
bool finishAll = false;
bool children = false;

class _DrawingBoardState extends State<DrawingBoard>
    with SingleTickerProviderStateMixin {
  Color selectedColor = Colors.black;
  DrawingPoint? d;

  bool showLines = true;
  bool showPoints = true;
  bool valueA = false;
  bool valueB = false;

  List<Color> colors = [
    Colors.pink,
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.amberAccent,
    Colors.purple,
    Colors.green,
  ];

  @override
  void initState() {
    super.initState();
    c = Get.put(ChangeController());
    c.loop.value = 1;
    c.rate.value = 10;
    c.innerCounter.value = 0;
    finishAll = false;
    controllerCenter = ConfettiController(
      duration: const Duration(
        seconds: 1,
      ),
    );
    drawingPoints = [];
    reTest = false;
    reTrain = false;
    children = false;
    widget.char.initMap();
    appSong.setVolume(0.5);
  }

  onChangeSw1(bool val1) {
    setState(() {
      valueA = val1;
      if (showLines == true) {
        setState(() {
          showLines = false;
        });
      } else if (showLines == false) {
        setState(() {
          showLines = true;
        });
      }
    });
  }

  onChangeSw2(bool val2) {
    setState(() {
      valueB = val2;

      if (showPoints == true) {
        setState(() {
          showPoints = false;
        });
      } else if (showPoints == false) {
        setState(() {
          showPoints = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    c = Get.put(ChangeController());
    return Directionality(
      textDirection: direction ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          actions: [
            Slider(
              inactiveColor: Theme.of(context)
                  .appBarTheme
                  .backgroundColor!
                  .withOpacity(0.5),
              activeColor: Theme.of(context).appBarTheme.backgroundColor,
              min: 0,
              max: 40,
              value: strokeWidth,
              onChanged: (val) => setState(() => strokeWidth = val),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 7.5,
            ),
            IconButton(
              onPressed: () => setState(() => drawingPoints = []),
              icon: const Icon(Icons.auto_fix_high),
            ),
          ],
        ),
        body: Stack(
          children: [
            GestureDetector(
              onPanStart: (details) {
                setState(() {
                  d = DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..isAntiAlias = true
                      ..strokeWidth = strokeWidth
                      ..strokeCap = StrokeCap.round,
                  );
                  drawingPoints.add(d!);
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  lastPointPrinted = details.localPosition;
                  d = DrawingPoint(
                    details.localPosition,
                    Paint()
                      ..color = selectedColor
                      ..isAntiAlias = true
                      ..strokeWidth = 10
                      ..strokeCap = StrokeCap.round,
                  );
                  drawingPoints.add(d!);
                });
              },
              onPanEnd: (details) {
                setState(() {
                  drawingPoints.add(DrawingPoint(
                    lastPointPrinted,
                    Paint()..color = selectedColor,
                  ));
                });
              },
              child: CustomPaint(
                painter: _DrawingPainter(
                  widget.char,
                  widget.counter,
                  showLines,
                  showPoints,
                ),
                child: Container(),
              ),
            ),
            reTest
                ? AlertDialog(
                    titleTextStyle: GoogleFonts.crimsonPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                    title: Text(
                      "You Failed".tr,
                    ),
                    content: Text(
                      "You must Train This letter very well".tr,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          Get.off(this);
                          Get.to(
                            const Home(),
                          );
                        },
                        child: Text(
                          "Back to home page".tr,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          c.rate.value = 10;

                          Navigator.of(context)
                            ..pop()
                            ..push(
                              MaterialPageRoute<DrawingBoard>(
                                builder: (context) => DrawingBoard(
                                  char: widget.char,
                                  counter: 7,
                                ),
                              ),
                            );
                          setState(() {
                            drawingPoints = [];
                            reTest = false;
                            widget.char.initMap();
                          });
                        },
                        child: Text(
                          "Try Test Again".tr,
                        ),
                      ),
                    ],
                  )
                : Container(),
            reTrain
                ? AlertDialog(
                    titleTextStyle: GoogleFonts.crimsonPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                    title: Text(
                      "You Failed".tr,
                    ),
                    content: Text(
                      "You must Learn This letter very well".tr,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          Get.to(
                            const Home(),
                          );
                        },
                        child: Text(
                          "Back to home page".tr,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          c.rate.value = 10;
                          widget.char.rates = [];
                          c.loop.value = 1;
                          Navigator.of(context)
                            ..pop()
                            ..push(
                              MaterialPageRoute<DrawingBoard>(
                                builder: (context) => DrawingBoard(
                                  char: widget.char,
                                  counter: widget.counter,
                                ),
                              ),
                            );
                          setState(() {
                            drawingPoints = [];
                            reTrain = false;
                            widget.char.initMap();
                          });
                        },
                        child: Text(
                          "Try Train Again".tr,
                        ),
                      ),
                    ],
                  )
                : Container(),
            widget.counter != 6
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 4,
                        ////تعديل
                        height: MediaQuery.of(context).size.height / 15,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 139, 126, 0.1),
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).splashColor,
                              // offset: const Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                              color: Colors.yellow.shade100, width: 1.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Center(
                            child: Text(
                          'rate'.tr + ' : ${c.rate.value}',
                          style: GoogleFonts.crimsonPro(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 17,
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            fontStyle: FontStyle.normal,
                          ),
                        )),
                      ),
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  ////تعديل
                  height: MediaQuery.of(context).size.height / 15,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 139, 126, 0.1),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).splashColor,
                        // offset: const Offset(0, 3),
                      ),
                    ],
                    border:
                        Border.all(color: Colors.yellow.shade100, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Center(
                      child: Text(
                    'step'.tr + ' : ${c.loop.value} / ${c.innerCounter.value}',
                    style: GoogleFonts.crimsonPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 17,
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      fontStyle: FontStyle.normal,
                    ),
                  )),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ConfettiWidget(
                confettiController: controllerCenter,
                blastDirectionality: BlastDirectionality.explosive,
                // don't specify a direction, blast randomly
                shouldLoop: false,
                // start again as soon as the animation is finished
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple
                ],
                // manually specify the colors to be used
                createParticlePath: drawStar, // define a custom shape/path.
              ),
            ),
            finishAll
                ? AlertDialog(
                    titleTextStyle: GoogleFonts.crimsonPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      color: Theme.of(context).scaffoldBackgroundColor, //تعديل
                    ),
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                    title: Center(
                      child: Text(
                        "You Finished".tr,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          if (box.read("rateTest${widget.char.getName}") !=
                                  null &&
                              box.read("rateTest${widget.char.getName}") > 0) {
                            box.write(
                              "rate${widget.char.getName}",
                              (box.read("rateTrain${widget.char.getName}") +
                                      box.read(
                                          "rateTest${widget.char.getName}")) /
                                  2,
                            );
                          }

                          Get.offAll(
                            const Home(),
                          );
                        },
                        child: Text(
                          "Back to home".tr,
                          style: GoogleFonts.crimsonPro(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 15,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
            children
                ? AlertDialog(
                    titleTextStyle: GoogleFonts.crimsonPro(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      color: Theme.of(context).scaffoldBackgroundColor, //تعديل
                    ),
                    backgroundColor:
                        Theme.of(context).appBarTheme.backgroundColor,
                    title: Center(
                      child: Text(
                        "Try again later".tr,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          click.play(AssetSource("click.wav"));
                          setState(() {
                            children = false;
                          });
                          Get.offAll(
                            const Home(),
                          );
                        },
                        child: Text(
                          "Try Again".tr,
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
        bottomNavigationBar: widget.counter == 6
            ? BottomAppBar(
                elevation: 0,
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildSwitch(valueA, onChangeSw1),
                      buildSwitch(valueB, onChangeSw2),
                    ],
                  ),
                ),
              )
            : BottomAppBar(
                elevation: 0,
              ),
      ),
    );
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  Widget buildSwitch(bool val, Function onChangeVal) {
    return Transform.scale(
      scale: 1,
      child: Switch.adaptive(
        activeColor: Theme.of(context).appBarTheme.backgroundColor,
        inactiveTrackColor:
            Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.4),
        inactiveThumbColor:
            Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.3),
        value: val,
        onChanged: (newValue) => onChangeVal(newValue),
      ),
    );
  }

  /*Widget _buildColorChose(Color color) {
    bool isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () => setState(() => selectedColor = color),
      child: Container(
        height: isSelected ? 47 : 40,
        width: isSelected ? 47 : 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: isSelected
              ? Border.all(
                  color: Colors.white,
                  width: 3,
                )
              : null,
        ),
      ),
    );
  }*/

  @override
  void dispose() {
    super.dispose();
    controllerCenter.dispose();
    widget.char.initMap();
    c.loop.value = 1;
    widget.char.rates = [];
    drawingPoints = [];
    if (box.read("rateTest${widget.char.getName}") != null &&
        box.read("rateTest${widget.char.getName}") > 0) {
      box.write(
        "rate${widget.char.getName}",
        (box.read("rateTrain${widget.char.getName}") +
                box.read("rateTest${widget.char.getName}")) /
            2,
      );
    }
    reTest = false;
  }
}

bool finishLevel = false;

class _DrawingPainter extends CustomPainter {
  final Char char;
  final int counter;
  int? status;
  final bool showLines;
  final bool showPoints;

  _DrawingPainter(
    this.char,
    this.counter,
    this.showLines,
    this.showPoints,
  );

  @override
  void paint(Canvas canvas, Size size) {
    drawLines(canvas, size, linePaint);

    char.draw(
      canvas,
      greyOp,
      showLines,
      showPoints,
      counter,
    );

    if (finishLevel) {
      drawingPoints = [];
      finishLevel = false;
    }
    for (int i = 0; i < drawingPoints.length; i++) {
      canvas.drawCircle(
        drawingPoints[i].offset,
        strokeWidth,
        drawingPoints[i].paint,
      );
    }

    status = char.check(canvas, lastPointPrinted, counter);
    if (status == 1) {
      finishLevel = true;
    } else if (status == 5) {
      reTest = true;
    } else if (status == 6) {
      reTrain = true;
    } else if (status == 10) {
      finishAll = true;
    } else if (status == 130) {
      children = true;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class DrawingPoint {
  Offset offset;
  Paint paint;

  DrawingPoint(
    this.offset,
    this.paint,
  );
}
