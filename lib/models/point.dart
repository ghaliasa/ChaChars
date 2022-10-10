// ignore_for_file: unnecessary_import, unused_field

import 'dart:ui';

import 'package:flutter/material.dart';

import '../static/static.dart';

class Point {
  int _id;
  Offset _offset;
  double _size = 15;

  Paint _paint = Paint()
    ..color = Colors.grey
    ..strokeWidth = 6;

  Point(
    this._id,
    this._offset,
  );

  Point.withSize(
    this._id,
    this._offset,
    this._size,
  );

  Point.withPaint(
    this._id,
    this._offset,
    this._paint,
  );

  Paint get getPaint => _paint;

  set setPaint(Paint value) {
    _paint = value;
  }

  Offset get getOffset => _offset;

  set setOffset(Offset value) {
    _offset = value;
  }

  int get getId => _id;

  set setId(int value) {
    _id = value;
  }

  void draw(Canvas canvas) {
    canvas.drawCircle(_offset, _size, greyOp);
  }
}
