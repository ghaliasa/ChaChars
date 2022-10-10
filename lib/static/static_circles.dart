// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import '../models/circle.dart';
import '../static/static.dart';
import '../static/static_points.dart';

class StaticCircle {
  Circle C1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().C4(),
      dist(
        StaticPoints().C1().getOffset,
        StaticPoints().C4().getOffset,
      ),
      2.2,
      0.5,
    );
  }

  Circle G1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().G3(),
      dist(
        StaticPoints().G1().getOffset,
        StaticPoints().G3().getOffset,
      ),
      1.56,
      0,
    );
  }

  Circle O1() {
    return Circle(
      1,
      StaticPoints().O6(),
      dist(StaticPoints().O1().getOffset, StaticPoints().O6().getOffset),
    );
  }

  Circle Q1() {
    return Circle(
      1,
      StaticPoints().Q8(),
      dist(
        StaticPoints().Q8().getOffset,
        StaticPoints().Q1().getOffset,
      ),
    );
  }

  Circle a1() {
    return Circle(
      1,
      StaticPoints().a8(),
      dist(
        StaticPoints().a1().getOffset,
        StaticPoints().a8().getOffset,
      ),
    );
  }

  Circle c1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().c4(),
      dist(
        StaticPoints().c1().getOffset,
        StaticPoints().c4().getOffset,
      ),
      2.2,
      0.5,
    );
  }

  Circle e1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().e4(),
      screenHeight / 7,
      2.3,
      1.4,
    );
  }


  Circle o1() {
    return Circle(
      1,
      StaticPoints().o6(),
      dist(
        StaticPoints().o1().getOffset,
        StaticPoints().o6().getOffset,
      ),
    );
  }

  Circle zero1() {
    return Circle(
      1,
      StaticPoints().zero6(),
      dist(
        StaticPoints().zero1().getOffset,
        StaticPoints().zero6().getOffset,
      ),
    );
  }

  Circle six1() {
    return Circle(
      1,
      StaticPoints().six5(),
      screenWidth / 4,
    );
  }

  Circle nine1() {
    return Circle(
      1,
      StaticPoints().nine5(),
      dist(
        StaticPoints().nine2().getOffset,
        StaticPoints().nine5().getOffset,
      ),
    );
  }

  Circle Geem1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Geem7(),
      screenHeight / 6,
      2.8,
      -0.1,
    );
  }

  Circle Haa1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Haa6(),
      screenHeight / 6,
      2.8,
      -0.1,
    );
  }

  Circle Khaa1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Khaa7(),
      screenHeight / 6,
      2.8,
      -0.1,
    );
  }

  Circle Ain1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Ain4(),
      dist(
        StaticPoints().Ain3().getOffset,
        StaticPoints().Ain4().getOffset,
      ),
      2.8,
      -0.1,
    );
  }

  Circle Ghin1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Ghin5(),
      screenHeight / 6,
      2.8,
      -0.1,
    );
  }

  Circle Raa1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Raa3(),
      screenHeight / 6,
      0.999,
      -2.8,
    );
  }

  Circle Zai1() {
    return Circle.withStartAndEnd(
      1,
      StaticPoints().Zai4(),
      screenHeight / 6,
      0.999,
      -2.8,
    );
  }


  Circle fiveAr1() {
    return Circle(
      1,
      StaticPoints().fiveAr4(),
      dist(StaticPoints().fiveAr1().getOffset,
              Offset(screenWidth / 2, 4 * (screenHeight / 6))) /
          2,
    );
  }
}
