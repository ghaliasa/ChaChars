// ignore_for_file: unnecessary_import

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../models/point.dart';

class Circle {
  int _id;
  Point _point;
  double _radius;
  double _start = 0;
  double _end = 0;

  Circle(this._id, this._point, this._radius);

  Circle.withStartAndEnd(
      this._id, this._point, this._radius, this._start, this._end);

  double get getRadius => _radius;

  set setRadius(double value) {
    _radius = value;
  }

  Point get getPoint => _point;

  set setPoint(Point value) {
    _point = value;
  }

  int get getId => _id;

  set setId(int value) {
    _id = value;
  }

  void draw(Canvas canvas, Paint paint, double size) {
    double a = 0;
    canvas.save();
    canvas.translate(_point.getOffset.dx, _point.getOffset.dy);
    for (a = -pi / 2 + _start; a < 3 * (pi / 2) + _end; a = a + 0.01) {
      double x = cos(a) * _radius;
      double y = sin(a) * _radius;
      canvas.drawCircle(Offset(x, y), size, paint);
    }
    canvas.restore();
  }
}
