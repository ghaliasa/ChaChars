// ignore_for_file: non_constant_identifier_names

import '../models/arch.dart';
import '../models/arch_angle.dart';
import '../static/static_points.dart';

class StaticArches {
  Arch B1() {
    return Arch(
      1,
      StaticPoints().B3(),
      StaticPoints().B4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch B2() {
    return Arch(
      2,
      StaticPoints().B4(),
      StaticPoints().B5(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch D1() {
    return Arch(
      1,
      StaticPoints().D3(),
      StaticPoints().D4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch J1() {
    return Arch(
      1,
      StaticPoints().J4(),
      StaticPoints().J5(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch P1() {
    return Arch(
      1,
      StaticPoints().P3(),
      StaticPoints().P4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch R1() {
    return Arch(
      1,
      StaticPoints().R3(),
      StaticPoints().R4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch S1() {
    return Arch.withStartAndEnd(
      1,
      StaticPoints().S1(),
      StaticPoints().S2(),
      ArchAngle.upToLeftToBottom,
      0.75,
      0,
    );
  }

  Arch S2() {
    return Arch.withStartAndEnd(
      2,
      StaticPoints().S2(),
      StaticPoints().S3(),
      ArchAngle.upToRightToBottom,
      0,
      0.75,
    );
  }

  Arch U1() {
    return Arch(
      1,
      StaticPoints().U2(),
      StaticPoints().U3(),
      ArchAngle.leftToBottomToRight,
    );
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////

  Arch u1() {
    return Arch(
      1,
      StaticPoints().u2(),
      StaticPoints().u3(),
      ArchAngle.leftToBottomToRight,
    );
  }

  Arch y1() {
    return Arch(
      1,
      StaticPoints().y1(),
      StaticPoints().y2(),
      ArchAngle.leftToBottomToRight,
    );
  }

  Arch y2() {
    return Arch(
      2,
      StaticPoints().y3(),
      StaticPoints().y4(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch two1() {
    return Arch(
      1,
      StaticPoints().two1(),
      StaticPoints().two2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch three1() {
    return Arch.withStartAndEnd(
      1,
      StaticPoints().three1(),
      StaticPoints().three2(),
      ArchAngle.upToRightToBottom,
      -0.75,
      0,
    );
  }

  Arch three2() {
    return Arch.withStartAndEnd(
      2,
      StaticPoints().three2(),
      StaticPoints().three3(),
      ArchAngle.upToRightToBottom,
      0,
      0.25,
    );
  }

  Arch five1() {
    return Arch(
      1,
      StaticPoints().five3(),
      StaticPoints().five4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch eight1() {
    return Arch(
      1,
      StaticPoints().eight1(),
      StaticPoints().eight2(),
      ArchAngle.bottomToLeftTop,
    );
  }

  Arch eight2() {
    return Arch(
      2,
      StaticPoints().eight2(),
      StaticPoints().eight3(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch eight3() {
    return Arch(
      3,
      StaticPoints().eight3(),
      StaticPoints().eight4(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch eight4() {
    return Arch(
      4,
      StaticPoints().eight4(),
      StaticPoints().eight5(),
      ArchAngle.bottomToRightTop,
    );
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////

  Arch b1() {
    return Arch(
      1,
      StaticPoints().b3(),
      StaticPoints().b4(),
      ArchAngle.upToRightToBottom,
    );
  }

  Arch d1() {
    return Arch(
      1,
      StaticPoints().d3(),
      StaticPoints().d4(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch f1() {
    return Arch(
      1,
      StaticPoints().f1(),
      StaticPoints().f2(),
      ArchAngle.rightToUpToLeft,
    );
  }

  Arch g1() {
    return Arch(
      1,
      StaticPoints().g1(),
      StaticPoints().g2(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch g2() {
    return Arch(
      2,
      StaticPoints().g2(),
      StaticPoints().g3(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch g3() {
    return Arch(
      3,
      StaticPoints().g4(),
      StaticPoints().g5(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch h1() {
    return Arch(
      1,
      StaticPoints().h3(),
      StaticPoints().h4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch j1() {
    return Arch(
      1,
      StaticPoints().j2(),
      StaticPoints().j3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch m1() {
    return Arch(
      1,
      StaticPoints().m3(),
      StaticPoints().m4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch m2() {
    return Arch(
      1,
      StaticPoints().m6(),
      StaticPoints().m7(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch n1() {
    return Arch(
      1,
      StaticPoints().n3(),
      StaticPoints().n4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch p1() {
    return Arch(
      1,
      StaticPoints().p3(),
      StaticPoints().p4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch p2() {
    return Arch(
      2,
      StaticPoints().p4(),
      StaticPoints().p5(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch q1() {
    return Arch(
      1,
      StaticPoints().p3(),
      StaticPoints().p4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch q2() {
    return Arch(
      2,
      StaticPoints().p4(),
      StaticPoints().p5(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch r1() {
    return Arch(
      1,
      StaticPoints().r3(),
      StaticPoints().r4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch s1() {
    return Arch.withStartAndEnd(
      1,
      StaticPoints().s1(),
      StaticPoints().s2(),
      ArchAngle.upToLeftToBottom,
      0.75,
      0,
    );
  }

  Arch s2() {
    return Arch.withStartAndEnd(
      2,
      StaticPoints().s2(),
      StaticPoints().s3(),
      ArchAngle.upToRightToBottom,
      0,
      0.75,
    );
  }

  Arch t1() {
    return Arch(
      1,
      StaticPoints().t2(),
      StaticPoints().t3(),
      ArchAngle.leftToBottomToRight,
    );
  }

  Arch Alif1() {
    return Arch(
      1,
      StaticPoints().Alif3(),
      StaticPoints().Alif4(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch Sen1() {
    return Arch(
      1,
      StaticPoints().Sen2(),
      StaticPoints().Sen3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Sen2() {
    return Arch(
      2,
      StaticPoints().Sen5(),
      StaticPoints().Sen6(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Sen3() {
    return Arch(
      3,
      StaticPoints().Sen8(),
      StaticPoints().Sen9(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Shen1() {
    return Arch(
      1,
      StaticPoints().Shen2(),
      StaticPoints().Shen3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Shen2() {
    return Arch(
      2,
      StaticPoints().Shen5(),
      StaticPoints().Shen6(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Shen3() {
    return Arch(
      3,
      StaticPoints().Shen8(),
      StaticPoints().Shen9(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Sad1() {
    return Arch(
      1,
      StaticPoints().Sad1(),
      StaticPoints().Sad2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Sad2() {
    return Arch(
      2,
      StaticPoints().Sad5(),
      StaticPoints().Sad6(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Dad1() {
    return Arch(
      1,
      StaticPoints().Dad1(),
      StaticPoints().Dad2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Dad2() {
    return Arch(
      1,
      StaticPoints().Dad5(),
      StaticPoints().Dad6(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Taaa1() {
    return Arch(
      1,
      StaticPoints().Taaa1(),
      StaticPoints().Taaa2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Thaaa1() {
    return Arch(
      1,
      StaticPoints().Thaaa1(),
      StaticPoints().Thaaa2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Ain1() {
    return Arch(
      1,
      StaticPoints().Ain1(),
      StaticPoints().Ain2(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch Ghin1() {
    return Arch(
      1,
      StaticPoints().Ghin1(),
      StaticPoints().Ghin2(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch Faa1() {
    return Arch(
      1,
      StaticPoints().Faa1(),
      StaticPoints().Faa2(),
      ArchAngle.bottomToLeftTop,
    );
  }

  Arch Kaf1() {
    return Arch(
      1,
      StaticPoints().Kaf1(),
      StaticPoints().Kaf2(),
      ArchAngle.bottomToLeftTop,
    );
  }

  Arch Kaf2() {
    return Arch(
      2,
      StaticPoints().Kaf3(),
      StaticPoints().Kaf4(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Kaff1() {
    return Arch(
      1,
      StaticPoints().Kaff5(),
      StaticPoints().Kaff6(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch Lam1() {
    return Arch(
      1,
      StaticPoints().Lam2(),
      StaticPoints().Lam3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Waw1() {
    return Arch(
      1,
      StaticPoints().Waw1(),
      StaticPoints().Waw2(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch Waw2() {
    return Arch(
      2,
      StaticPoints().Waw2(),
      StaticPoints().Waw3(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Waw3() {
    return Arch.withStartAndEnd(
      3,
      StaticPoints().Waw5(),
      StaticPoints().Waw6(),
      ArchAngle.upToRightToBottom,
      1.35,
      0.15,
    );
  }

  Arch Non1() {
    return Arch(
      1,
      StaticPoints().Non2(),
      StaticPoints().Non3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch haa1() {
    return Arch(
      1,
      StaticPoints().haa1(),
      StaticPoints().haa2(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch haa2() {
    return Arch(
      1,
      StaticPoints().haa3(),
      StaticPoints().haa4(),
      ArchAngle.leftToUpToRight,
    );
  }

  Arch Yaa1() {
    return Arch(
      1,
      StaticPoints().Yaa1(),
      StaticPoints().Yaa2(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch Yaa2() {
    return Arch(
      2,
      StaticPoints().Yaa2(),
      StaticPoints().Yaa3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch threeAr1() {
    return Arch(
      1,
      StaticPoints().threeAr1(),
      StaticPoints().threeAr2(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch threeAr2() {
    return Arch(
      2,
      StaticPoints().threeAr2(),
      StaticPoints().threeAr3(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch fourAr1() {
    return Arch(
      1,
      StaticPoints().fourAr1(),
      StaticPoints().fourAr2(),
      ArchAngle.upToLeftToBottom,
    );
  }

  Arch fourAr2() {
    return Arch.withStartAndEnd(
      2,
      StaticPoints().fourAr2(),
      StaticPoints().fourAr3(),
      ArchAngle.upToLeftToBottom,
      0,
      -1,
    );
  }

  Arch nineAr1() {
    return Arch(
      1,
      StaticPoints().nineAr1(),
      StaticPoints().nineAr2(),
      ArchAngle.rightToBottomToLeft,
    );
  }

  Arch nineAr2() {
    return Arch(
      2,
      StaticPoints().nineAr2(),
      StaticPoints().nineAr3(),
      ArchAngle.leftToUpToRight,
    );
  }
}
