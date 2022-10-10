import 'dart:math';
import 'dart:ui' as ui;

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as logging;

import 'package:get_storage/get_storage.dart';

import '../controllers/ChangeController.dart';

void log(String string) {
  logging.log(string);
}

late ChangeController c;

ConfettiController controllerCenter = ConfettiController();
GetStorage box = GetStorage();

double ratio = ui.window.devicePixelRatio;
double screenWidth = ui.window.physicalSize.width / ratio;
double screenHeight = ui.window.physicalSize.height / ratio;

Paint greyOp = Paint()
  ..color = Colors.grey.withOpacity(0.8)
  ..strokeWidth = 15;

Paint greyOpArch = Paint()
  ..color = Colors.grey
  ..strokeWidth = 15;

Paint landMarkPaint = Paint()
  ..color = Colors.red
  ..strokeWidth = 10;

Paint linePaint = Paint()
  ..color = Colors.black
  ..strokeWidth = 5;

double dist(Offset p1, Offset p2) {
  return sqrt(pow(p1.dx - p2.dx, 2) + pow(p1.dy - p2.dy, 2));
}

double mail(Offset p1, Offset p2) {
  if ((p2.dx - p1.dx) == 0) {
    return 0;
  } else {
    return ((p2.dy - p1.dy) / (p2.dx - p1.dx));
  }
}

void drawLines(Canvas canvas, Size size, Paint paint) {
  canvas.drawLine(
    Offset(0, screenHeight / 6),
    Offset(screenWidth, screenHeight / 6),
    paint,
  );
  canvas.drawLine(
    Offset(0, 2.5 * screenHeight / 6),
    Offset(screenWidth, 2.5 * screenHeight / 6),
    paint,
  );
  canvas.drawLine(
    Offset(0, 4 * screenHeight / 6),
    Offset(screenWidth, 4 * screenHeight / 6),
    paint,
  );
}

void drawGuideCount(ui.Canvas canvas, String id, ui.Offset offset) {
  final ui.ParagraphBuilder paragraphBuilder = ui.ParagraphBuilder(
    ui.ParagraphStyle(),
  )
    ..pushStyle(
      ui.TextStyle(
        shadows: [
          const BoxShadow(spreadRadius: 8, color: Colors.grey, blurRadius: 6)
        ],
        decorationColor: Colors.black12,
        color: Colors.black26,
        fontStyle: ui.FontStyle.normal,
        decorationThickness: 3,
        fontWeight: FontWeight.w900,
        fontSize: 20,
        background: Paint()
          ..color = Colors.grey.shade100
          ..strokeWidth = 100
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round
          ..strokeMiterLimit = 520,
      ),
    )
    ..addText(id);
  final ui.Paragraph paragraph = paragraphBuilder.build()
    ..layout(const ui.ParagraphConstraints(width: 1000));
  canvas.drawParagraph(paragraph, Offset(offset.dx - 10, offset.dy - 10));
}

AudioPlayer player = AudioPlayer();
AudioPlayer appSong = AudioPlayer();
AudioPlayer select = AudioPlayer();
AudioPlayer fail = AudioPlayer();
AudioPlayer win = AudioPlayer();
AudioPlayer start = AudioPlayer();
AudioPlayer error = AudioPlayer();
AudioPlayer click = AudioPlayer();
AudioPlayer excellent = AudioPlayer();
AudioPlayer good = AudioPlayer();
AudioPlayer goodLuck = AudioPlayer();

bool direction = true;
