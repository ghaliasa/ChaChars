// ignore_for_file: non_constant_identifier_names

import '../models/char.dart';
import '../static/static_arches.dart';
import '../static/static_circles.dart';
import '../static/static_points.dart';

class StaticChars {
  Char A() {
    return Char(
      1,
      "A",
      "capital/AA.jpg",
      [
        StaticPoints().A1(),
        StaticPoints().A2(),
        StaticPoints().A3(),
        StaticPoints().A4(),
        StaticPoints().A5(),
        StaticPoints().A6(),
        StaticPoints().A7(),
        StaticPoints().A8(),
      ],
      [],
      [],
      {
        StaticPoints().A3().getId: StaticPoints().A4().getId,
        StaticPoints().A6().getId: StaticPoints().A7().getId,
      },
    );
  }

  Char B() {
    return Char(
      2,
      "B",
      "capital/BB.jpg",
      [
        StaticPoints().B1(),
        StaticPoints().B2(),
        StaticPoints().B3(),
        StaticPoints().B4(),
        StaticPoints().B5(),
      ],
      [
        StaticArches().B1(),
        StaticArches().B2(),
      ],
      [],
      {
        StaticPoints().B3().getId: StaticPoints().B4().getId,
        StaticPoints().B4().getId: StaticPoints().B5().getId,
      },
    );
  }

  Char C() {
    return Char(
      3,
      "C",
      "capital/CC.jpg",
      [
        StaticPoints().C1(),
        StaticPoints().C2(),
        StaticPoints().C3(),
      ],
      [],
      [
        StaticCircle().C1(),
      ],
      {
        StaticPoints().C1().getId: StaticPoints().C2().getId,
        StaticPoints().C2().getId: StaticPoints().C3().getId,
      },
    );
  }

  Char D() {
    return Char(
      4,
      "D",
      "capital/DD.jpg",
      [
        StaticPoints().D1(),
        StaticPoints().D2(),
        StaticPoints().D3(),
        StaticPoints().D4(),
      ],
      [
        StaticArches().D1(),
      ],
      [],
      {
        StaticPoints().D3().getId: StaticPoints().D4().getId,
      },
    );
  }

  Char E() {
    return Char(
      5,
      "E",
      "capital/EE.png",
      [
        StaticPoints().E1(),
        StaticPoints().E2(),
        StaticPoints().E3(),
        StaticPoints().E4(),
        StaticPoints().E5(),
        StaticPoints().E6(),
        StaticPoints().E7(),
        StaticPoints().E8(),
      ],
      [],
      [],
      {
        StaticPoints().E4().getId: StaticPoints().E5().getId,
        StaticPoints().E6().getId: StaticPoints().E7().getId,
      },
    );
  }

  Char F() {
    return Char(
      6,
      "F",
      "capital/FF.png",
      [
        StaticPoints().F1(),
        StaticPoints().F2(),
        StaticPoints().F3(),
        StaticPoints().F4(),
        StaticPoints().F5(),
        StaticPoints().F6(),
      ],
      [],
      [],
      {
        StaticPoints().F4().getId: StaticPoints().F5().getId,
      },
    );
  }

  Char G() {
    return Char(
      7,
      "G",
      "capital/GG.png",
      [
        StaticPoints().G1(),
        StaticPoints().G2(),
        StaticPoints().G3(),
      ],
      [],
      [
        StaticCircle().G1(),
      ],
      {
        StaticPoints().G1().getId: StaticPoints().G2().getId,
      },
    );
  }

  Char H() {
    return Char(
      8,
      "H",
      "capital/HH.png",
      [
        StaticPoints().H1(),
        StaticPoints().H2(),
        StaticPoints().H3(),
        StaticPoints().H4(),
        StaticPoints().H5(),
        StaticPoints().H6(),
      ],
      [],
      [],
      {
        StaticPoints().H2().getId: StaticPoints().H3().getId,
        StaticPoints().H4().getId: StaticPoints().H5().getId,
      },
    );
  }

  Char I() {
    return Char(
      9,
      "I",
      "capital/II.jfif",
      [
        StaticPoints().I1(),
        StaticPoints().I2(),
        StaticPoints().I3(),
        StaticPoints().I4(),
        StaticPoints().I5(),
        StaticPoints().I6(),
      ],
      [],
      [],
      {},
    );
  }

  Char J() {
    return Char(
      10,
      "J",
      "capital/JJ.jfif",
      [
        StaticPoints().J1(),
        StaticPoints().J2(),
        StaticPoints().J3(),
        StaticPoints().J4(),
        StaticPoints().J5(),
      ],
      [
        StaticArches().J1(),
      ],
      [],
      {
        StaticPoints().J4().getId: StaticPoints().J5().getId,
      },
    );
  }

  Char K() {
    return Char(
      11,
      "K",
      "capital/KK.png",
      [
        StaticPoints().K1(),
        StaticPoints().K2(),
        StaticPoints().K3(),
        StaticPoints().K4(),
        StaticPoints().K5(),
      ],
      [],
      [],
      {
        StaticPoints().K2().getId: StaticPoints().K3().getId,
      },
    );
  }

  Char L() {
    return Char(
      12,
      "L",
      "capital/LL.jfif",
      [
        StaticPoints().L1(),
        StaticPoints().L2(),
        StaticPoints().L3(),
        StaticPoints().L4(),
      ],
      [],
      [],
      {},
    );
  }

  Char M() {
    return Char(
      13,
      "M",
      "capital/MM.png",
      [
        StaticPoints().M1(),
        StaticPoints().M2(),
        StaticPoints().M3(),
        StaticPoints().M4(),
        StaticPoints().M5(),
      ],
      [],
      [],
      {},
    );
  }

  Char N() {
    return Char(
      14,
      "N",
      "capital/NN.png",
      [
        StaticPoints().N1(),
        StaticPoints().N2(),
        StaticPoints().N3(),
        StaticPoints().N4(),
      ],
      [],
      [],
      {},
    );
  }

  Char O() {
    return Char(
      15,
      "O",
      "capital/OO.png",
      [
        StaticPoints().O1(),
        StaticPoints().O2(),
        StaticPoints().O3(),
        StaticPoints().O4(),
        StaticPoints().O5(),
      ],
      [],
      [
        StaticCircle().O1(),
      ],
      {
        StaticPoints().O1().getId: StaticPoints().O2().getId,
        StaticPoints().O2().getId: StaticPoints().O3().getId,
        StaticPoints().O3().getId: StaticPoints().O4().getId,
        StaticPoints().O4().getId: StaticPoints().O5().getId,
      },
    );
  }

  Char P() {
    return Char(
      16,
      "P",
      "capital/PP.png",
      [
        StaticPoints().P1(),
        StaticPoints().P2(),
        StaticPoints().P3(),
        StaticPoints().P4(),
      ],
      [StaticArches().P1()],
      [],
      {
        StaticPoints().P3().getId: StaticPoints().P4().getId,
      },
    );
  }

  Char Q() {
    return Char(
      16,
      "Q",
      "capital/QQ.png",
      [
        StaticPoints().Q1(),
        StaticPoints().Q2(),
        StaticPoints().Q3(),
        StaticPoints().Q4(),
        StaticPoints().Q5(),
        StaticPoints().Q6(),
        StaticPoints().Q7(),
      ],
      [],
      [
        StaticCircle().Q1(),
      ],
      {
        StaticPoints().Q1().getId: StaticPoints().Q2().getId,
        StaticPoints().Q2().getId: StaticPoints().Q3().getId,
        StaticPoints().Q3().getId: StaticPoints().Q4().getId,
        StaticPoints().Q4().getId: StaticPoints().Q5().getId,
        StaticPoints().Q5().getId: StaticPoints().Q6().getId,
      },
    );
  }

  Char R() {
    return Char(
      17,
      "R",
      "capital/RR.jpg",
      [
        StaticPoints().R1(),
        StaticPoints().R2(),
        StaticPoints().R3(),
        StaticPoints().R4(),
        StaticPoints().R5(),
        StaticPoints().R6(),
      ],
      [
        StaticArches().R1(),
      ],
      [],
      {
        StaticPoints().R3().getId: StaticPoints().R4().getId,
      },
    );
  }

  Char S() {
    return Char(
      18,
      "S",
      "capital/SS.png",
      [
        StaticPoints().S1(),
        StaticPoints().S2(),
        StaticPoints().S3(),
      ],
      [
        StaticArches().S1(),
        StaticArches().S2(),
      ],
      [],
      {
        StaticPoints().S1().getId: StaticPoints().S2().getId,
        StaticPoints().S2().getId: StaticPoints().S3().getId,
      },
    );
  }

  Char T() {
    return Char(
      19,
      "T",
      "capital/TT.png",
      [
        StaticPoints().T1(),
        StaticPoints().T2(),
        StaticPoints().T3(),
        StaticPoints().T4(),
      ],
      [],
      [],
      {},
    );
  }

  Char U() {
    return Char(
      20,
      "U",
      "capital/UU.png",
      [
        StaticPoints().U1(),
        StaticPoints().U2(),
        StaticPoints().U3(),
        StaticPoints().U4(),
      ],
      [
        StaticArches().U1(),
      ],
      [],
      {
        StaticPoints().U2().getId: StaticPoints().U3().getId,
      },
    );
  }

  Char V() {
    return Char(
      21,
      "V",
      "capital/VV.png",
      [
        StaticPoints().V1(),
        StaticPoints().V2(),
        StaticPoints().V3(),
      ],
      [],
      [],
      {},
    );
  }

  Char W() {
    return Char(
      22,
      "W",
      "capital/WW.png",
      [
        StaticPoints().W1(),
        StaticPoints().W2(),
        StaticPoints().W3(),
        StaticPoints().W4(),
        StaticPoints().W5(),
      ],
      [],
      [],
      {},
    );
  }

  Char X() {
    return Char(
      24,
      "X",
      "capital/XX.png",
      [
        StaticPoints().X1(),
        StaticPoints().X2(),
        StaticPoints().X3(),
        StaticPoints().X4(),
      ],
      [],
      [],
      {
        StaticPoints().X2().getId: StaticPoints().X3().getId,
      },
    );
  }

  Char Y() {
    return Char(
      25,
      "Y",
      "capital/YY.jpg",
      [
        StaticPoints().Y1(),
        StaticPoints().Y2(),
        StaticPoints().Y3(),
        StaticPoints().Y4(),
        StaticPoints().Y5(),
      ],
      [],
      [],
      {},
    );
  }

  Char Z() {
    return Char(
      26,
      "Z",
      "capital/ZZ.jfif",
      [
        StaticPoints().Z1(),
        StaticPoints().Z2(),
        StaticPoints().Z3(),
        StaticPoints().Z4(),
      ],
      [],
      [],
      {},
    );
  }

  /////////////////////////////////////////////////////////////////////////////////////

  Char a() {
    return Char(
      23,
      "a",
      "small/a.png",
      [
        StaticPoints().a1(),
        StaticPoints().a2(),
        StaticPoints().a3(),
        StaticPoints().a4(),
        StaticPoints().a5(),
        StaticPoints().a6(),
        StaticPoints().a7(),
      ],
      [],
      [
        StaticCircle().a1(),
      ],
      {
        StaticPoints().a1().getId: StaticPoints().a2().getId,
        StaticPoints().a2().getId: StaticPoints().a3().getId,
        StaticPoints().a3().getId: StaticPoints().a4().getId,
        StaticPoints().a4().getId: StaticPoints().a5().getId,
        StaticPoints().a5().getId: StaticPoints().a6().getId,
      },
    );
  }

  Char b() {
    return Char(
      24,
      "b",
      "small/b.png",
      [
        StaticPoints().b1(),
        StaticPoints().b2(),
        StaticPoints().b3(),
        StaticPoints().b4(),
      ],
      [
        StaticArches().b1(),
      ],
      [],
      {
        StaticPoints().b3().getId: StaticPoints().b4().getId,
      },
    );
  }

  Char c() {
    return Char(
      25,
      "c",
      "small/c.png",
      [
        StaticPoints().c1(),
        StaticPoints().c2(),
        StaticPoints().c3(),
      ],
      [],
      [
        StaticCircle().c1(),
      ],
      {
        StaticPoints().c1().getId: StaticPoints().c2().getId,
        StaticPoints().c2().getId: StaticPoints().c3().getId,
      },
    );
  }

  Char d() {
    return Char(
      26,
      "d",
      "small/d.jpg",
      [
        StaticPoints().d1(),
        StaticPoints().d2(),
        StaticPoints().d3(),
        StaticPoints().d4(),
      ],
      [
        StaticArches().d1(),
      ],
      [],
      {
        StaticPoints().d3().getId: StaticPoints().d4().getId,
      },
    );
  }

  Char e() {
    return Char(
      27,
      "e",
      "small/e.jpg",
      [
        StaticPoints().e1(),
        StaticPoints().e2(),
        StaticPoints().e3(),
      ],
      [],
      [
        StaticCircle().e1(),
      ],
      {
        StaticPoints().e2().getId: StaticPoints().e3().getId,
      },
    );
  }

  Char f() {
    return Char(
      28,
      "f",
      "small/f.png",
      [
        StaticPoints().f1(),
        StaticPoints().f2(),
        StaticPoints().f3(),
        StaticPoints().f4(),
        StaticPoints().f5(),
      ],
      [
        StaticArches().f1(),
      ],
      [],
      {
        StaticPoints().f1().getId: StaticPoints().f2().getId,
        StaticPoints().f3().getId: StaticPoints().f4().getId,
      },
    );
  }

  Char g() {
    return Char(
      29,
      "g",
      "small/g.png",
      [
        StaticPoints().g1(),
        StaticPoints().g2(),
        StaticPoints().g3(),
        StaticPoints().g4(),
        StaticPoints().g5(),
      ],
      [
        StaticArches().g1(),
        StaticArches().g2(),
        StaticArches().g3(),
      ],
      [
      ],
      {
        StaticPoints().g1().getId: StaticPoints().g2().getId,
        StaticPoints().g2().getId: StaticPoints().g3().getId,
        StaticPoints().g4().getId: StaticPoints().g5().getId,
      },
    );
  }

  Char h() {
    return Char(
      30,
      "h",
      "small/h.png",
      [
        StaticPoints().h1(),
        StaticPoints().h2(),
        StaticPoints().h3(),
        StaticPoints().h4(),
        StaticPoints().h5(),
      ],
      [
        StaticArches().h1(),
      ],
      [],
      {
        StaticPoints().h3().getId: StaticPoints().h4().getId,
      },
    );
  }

  Char i() {
    return Char(
      31,
      "i",
      "small/i.png",
      [
        StaticPoints().i1(),
        StaticPoints().i2(),
        StaticPoints().i3(),
      ],
      [],
      [],
      {
        StaticPoints().i2().getId: StaticPoints().i3().getId,
      },
    );
  }

  Char j() {
    return Char(
      32,
      "j",
      "small/j.png",
      [
        StaticPoints().j1(),
        StaticPoints().j2(),
        StaticPoints().j3(),
        StaticPoints().j4(),
      ],
      [
        StaticArches().j1(),
      ],
      [],
      {
        StaticPoints().j2().getId: StaticPoints().j3().getId,
        StaticPoints().j3().getId: StaticPoints().j4().getId,
      },
    );
  }

  Char k() {
    return Char(
      33,
      "k",
      "small/k.png",
      [
        StaticPoints().k1(),
        StaticPoints().k2(),
        StaticPoints().k3(),
        StaticPoints().k4(),
        StaticPoints().k5(),
      ],
      [],
      [],
      {
        StaticPoints().k2().getId: StaticPoints().k3().getId,
      },
    );
  }

  Char l() {
    return Char(
      34,
      "l",
      "small/l.jfif",
      [
        StaticPoints().l1(),
        StaticPoints().l2(),
      ],
      [],
      [],
      {},
    );
  }

  Char m() {
    return Char(
      35,
      "m",
      "small/m.jfif",
      [
        StaticPoints().m1(),
        StaticPoints().m2(),
        StaticPoints().m3(),
        StaticPoints().m4(),
        StaticPoints().m5(),
        StaticPoints().m6(),
        StaticPoints().m7(),
        StaticPoints().m8(),
      ],
      [
        StaticArches().m1(),
        StaticArches().m2(),
      ],
      [],
      {
        StaticPoints().m3().getId: StaticPoints().m4().getId,
        StaticPoints().m6().getId: StaticPoints().m7().getId,
      },
    );
  }

  Char n() {
    return Char(
      36,
      "n",
      "small/n.png",
      [
        StaticPoints().n1(),
        StaticPoints().n2(),
        StaticPoints().n3(),
        StaticPoints().n4(),
        StaticPoints().n5(),
      ],
      [
        StaticArches().n1(),
      ],
      [],
      {
        StaticPoints().n3().getId: StaticPoints().n4().getId,
      },
    );
  }

  Char o() {
    return Char(
      37,
      "o",
      "small/o.jpg",
      [
        StaticPoints().o1(),
        StaticPoints().o2(),
        StaticPoints().o3(),
        StaticPoints().o4(),
        StaticPoints().o5(),
      ],
      [],
      [
        StaticCircle().o1(),
      ],
      {
        StaticPoints().o1().getId: StaticPoints().o2().getId,
        StaticPoints().o2().getId: StaticPoints().o3().getId,
        StaticPoints().o3().getId: StaticPoints().o4().getId,
        StaticPoints().o4().getId: StaticPoints().o5().getId,
      },
    );
  }

  Char p() {
    return Char(
      38,
      "p",
      "small/p.png",
      [
        StaticPoints().p1(),
        StaticPoints().p2(),
        StaticPoints().p3(),
        StaticPoints().p4(),
        StaticPoints().p5(),
      ],
      [
        StaticArches().p1(),
        StaticArches().p2(),
      ],
      [],
      {
        StaticPoints().p3().getId: StaticPoints().p4().getId,
        StaticPoints().p4().getId: StaticPoints().p5().getId,
      },
    );
  }

  Char q() {
    return Char(
      39,
      "q",
      "small/q.png",
      [
        StaticPoints().q1(),
        StaticPoints().q2(),
        StaticPoints().q3(),
        StaticPoints().q4(),
        StaticPoints().q5(),
      ],
      [
        StaticArches().q1(),
        StaticArches().q2(),
      ],
      [],
      {
        StaticPoints().q3().getId: StaticPoints().q4().getId,
        StaticPoints().q4().getId: StaticPoints().q5().getId,
      },
    );
  }

  Char r() {
    return Char(
      40,
      "r",
      "small/r.png",
      [
        StaticPoints().r1(),
        StaticPoints().r2(),
        StaticPoints().r3(),
        StaticPoints().r4(),
      ],
      [
        StaticArches().r1(),
      ],
      [],
      {
        StaticPoints().r3().getId: StaticPoints().r4().getId,
      },
    );
  }

  Char s() {
    return Char(
      41,
      "s",
      "small/s.png",
      [
        StaticPoints().s1(),
        StaticPoints().s2(),
        StaticPoints().s3(),
      ],
      [
        StaticArches().s1(),
        StaticArches().s2(),
      ],
      [],
      {
        StaticPoints().s1().getId: StaticPoints().s2().getId,
        StaticPoints().s2().getId: StaticPoints().s3().getId,
      },
    );
  }

  Char t() {
    return Char(
      42,
      "t",
      "small/t.jfif",
      [
        StaticPoints().t1(),
        StaticPoints().t2(),
        StaticPoints().t3(),
        StaticPoints().t4(),
        StaticPoints().t5(),
      ],
      [
        StaticArches().t1(),
      ],
      [],
      {
        StaticPoints().t2().getId: StaticPoints().t3().getId,
        StaticPoints().t3().getId: StaticPoints().t4().getId,
      },
    );
  }

  Char u() {
    return Char(
      21,
      "u",
      "small/u.png",
      [
        StaticPoints().u1(),
        StaticPoints().u2(),
        StaticPoints().u3(),
        StaticPoints().u4(),
        StaticPoints().u5(),
      ],
      [
        StaticArches().u1(),
      ],
      [],
      {
        StaticPoints().u2().getId: StaticPoints().u3().getId,
      },
    );
  }

  Char v() {
    return Char(
      22,
      "v",
      "small/v.png",
      [
        StaticPoints().v1(),
        StaticPoints().v2(),
        StaticPoints().v3(),
      ],
      [],
      [],
      {},
    );
  }

  Char w() {
    return Char(
      23,
      "w",
      "small/w.png",
      [
        StaticPoints().w1(),
        StaticPoints().w2(),
        StaticPoints().w3(),
        StaticPoints().w4(),
        StaticPoints().w5(),
      ],
      [],
      [],
      {},
    );
  }

  Char x() {
    return Char(
      24,
      "x",
      "small/x.jfif",
      [
        StaticPoints().x1(),
        StaticPoints().x2(),
        StaticPoints().x3(),
        StaticPoints().x4(),
      ],
      [],
      [],
      {
        StaticPoints().x2().getId: StaticPoints().x3().getId,
      },
    );
  }

  Char y() {
    return Char(
      25,
      "y",
      "small/y.png",
      [
        StaticPoints().y1(),
        StaticPoints().y2(),
        StaticPoints().y3(),
        StaticPoints().y4(),
      ],
      [
        StaticArches().y1(),
        StaticArches().y2(),
      ],
      [],
      {
        StaticPoints().y1().getId: StaticPoints().y2().getId,
        StaticPoints().y3().getId: StaticPoints().y4().getId,
      },
    );
  }

  Char z() {
    return Char(
      26,
      "z",
      "small/z.png",
      [
        StaticPoints().z1(),
        StaticPoints().z2(),
        StaticPoints().z3(),
        StaticPoints().z4(),
      ],
      [],
      [],
      {},
    );
  }

  /////////////////////////////////////////////////////////////////////////////////////

  Char zero() {
    return Char(
      0,
      "0",
      "number/0.jpg",
      [
        StaticPoints().zero1(),
        StaticPoints().zero2(),
        StaticPoints().zero3(),
        StaticPoints().zero4(),
        StaticPoints().zero5(),
      ],
      [],
      [
        StaticCircle().zero1(),
      ],
      {
        StaticPoints().zero1().getId: StaticPoints().zero2().getId,
        StaticPoints().zero2().getId: StaticPoints().zero3().getId,
        StaticPoints().zero3().getId: StaticPoints().zero4().getId,
        StaticPoints().zero4().getId: StaticPoints().zero5().getId,
        StaticPoints().zero5().getId: StaticPoints().zero6().getId,
      },
    );
  }

  Char one() {
    return Char(
      1,
      "1",
      "number/1.jpg",
      [
        StaticPoints().one1(),
        StaticPoints().one2(),
        StaticPoints().one3(),
        StaticPoints().one4(),
        StaticPoints().one5(),
      ],
      [],
      [],
      {},
    );
  }

  Char two() {
    return Char(
      2,
      "2",
      "number/2.jpg",
      [
        StaticPoints().two1(),
        StaticPoints().two2(),
        StaticPoints().two3(),
        StaticPoints().two4(),
      ],
      [
        StaticArches().two1(),
      ],
      [],
      {
        StaticPoints().two1().getId: StaticPoints().two2().getId,
      },
    );
  }

  Char three() {
    return Char(
      3,
      "3",
      "number/3.jpg",
      [
        StaticPoints().three1(),
        StaticPoints().three2(),
        StaticPoints().three3(),
      ],
      [
        StaticArches().three1(),
        StaticArches().three2(),
      ],
      [],
      {
        StaticPoints().three1().getId: StaticPoints().three2().getId,
        StaticPoints().three2().getId: StaticPoints().three3().getId,
      },
    );
  }

  Char four() {
    return Char(
      4,
      "4",
      "number/4.jpg",
      [
        StaticPoints().four1(),
        StaticPoints().four2(),
        StaticPoints().four3(),
        StaticPoints().four4(),
        StaticPoints().four5(),
      ],
      [],
      [],
      {
        StaticPoints().four3().getId: StaticPoints().four4().getId,
      },
    );
  }

  Char five() {
    return Char(
      5,
      "5",
      "number/5.jpg",
      [
        StaticPoints().five1(),
        StaticPoints().five2(),
        StaticPoints().five3(),
        StaticPoints().five4(),
      ],
      [
        StaticArches().five1(),
      ],
      [],
      {
        StaticPoints().five3().getId: StaticPoints().five4().getId,
      },
    );
  }

  Char six() {
    return Char(
      6,
      "6",
      "number/6.jpg",
      [
        StaticPoints().six1(),
        StaticPoints().six2(),
        StaticPoints().six3(),
        StaticPoints().six4(),
      ],
      [],
      [
        StaticCircle().six1(),
      ],
      {
        StaticPoints().six2().getId: StaticPoints().six3().getId,
        StaticPoints().six3().getId: StaticPoints().six4().getId,
      },
    );
  }

  Char seven() {
    return Char(
      7,
      "7",
      "number/7.jpg",
      [
        StaticPoints().seven1(),
        StaticPoints().seven2(),
        StaticPoints().seven3(),
        StaticPoints().seven4(),
        StaticPoints().seven5(),
        StaticPoints().seven6(),
      ],
      [],
      [],
      {
        StaticPoints().seven4().getId: StaticPoints().seven5().getId,
      },
    );
  }

  Char eight() {
    return Char(
      8,
      "8",
      "number/8.jpg",
      [
        StaticPoints().eight1(),
        StaticPoints().eight2(),
        StaticPoints().eight3(),
        StaticPoints().eight4(),
        StaticPoints().eight5(),
      ],
      [
        StaticArches().eight1(),
        StaticArches().eight2(),
        StaticArches().eight3(),
        StaticArches().eight4(),
      ],
      [],
      {
        StaticPoints().eight1().getId: StaticPoints().eight2().getId,
        StaticPoints().eight2().getId: StaticPoints().eight3().getId,
        StaticPoints().eight3().getId: StaticPoints().eight4().getId,
        StaticPoints().eight4().getId: StaticPoints().eight5().getId,
      },
    );
  }

  Char nine() {
    return Char(
      9,
      "9",
      "number/9.jpg",
      [
        StaticPoints().nine1(),
        StaticPoints().nine2(),
        StaticPoints().nine3(),
        StaticPoints().nine4(),
      ],
      [],
      [
        StaticCircle().nine1(),
      ],
      {
        StaticPoints().nine1().getId: StaticPoints().nine2().getId,
        StaticPoints().nine2().getId: StaticPoints().nine3().getId,
      },
    );
  }

  /////////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////////////////

  Char Alif() {
    return Char(
      43,
      "أ",
      "arabic/alef.jfif",
      [
        StaticPoints().Alif1(),
        StaticPoints().Alif2(),
        StaticPoints().Alif3(),
        StaticPoints().Alif4(),
        StaticPoints().Alif5(),
      ],
      [
        StaticArches().Alif1(),
      ],
      [],
      {
        StaticPoints().Alif2().getId: StaticPoints().Alif3().getId,
        StaticPoints().Alif3().getId: StaticPoints().Alif4().getId,
      },
    );
  }

  Char Baa() {
    return Char(
      44,
      "ب",
      "arabic/baa.png",
      [
        StaticPoints().Baa1(),
        StaticPoints().Baa2(),
        StaticPoints().Baa3(),
        StaticPoints().Baa4(),
        StaticPoints().Baa5(),
      ],
      [],
      [],
      {
        StaticPoints().Baa4().getId: StaticPoints().Baa5().getId,
      },
    );
  }

  Char Taa() {
    return Char(
      45,
      "ت",
      "arabic/taa.png",
      [
        StaticPoints().Taa1(),
        StaticPoints().Taa2(),
        StaticPoints().Taa3(),
        StaticPoints().Taa4(),
        StaticPoints().Taa5(),
        StaticPoints().Taa6(),
      ],
      [],
      [],
      {
        StaticPoints().Taa4().getId: StaticPoints().Taa5().getId,
      },
    );
  }

  Char Thaa() {
    return Char(
      46,
      "ث",
      "arabic/thaa.png",
      [
        StaticPoints().Thaa1(),
        StaticPoints().Thaa2(),
        StaticPoints().Thaa3(),
        StaticPoints().Thaa4(),
        StaticPoints().Thaa5(),
        StaticPoints().Thaa6(),
        StaticPoints().Thaa7(),
      ],
      [],
      [],
      {
        StaticPoints().Thaa4().getId: StaticPoints().Thaa5().getId,
      },
    );
  }

  Char Geem() {
    return Char(
      47,
      "ج",
      "arabic/gem.png",
      [
        StaticPoints().Geem1(),
        StaticPoints().Geem2(),
        StaticPoints().Geem3(),
        StaticPoints().Geem4(),
        StaticPoints().Geem5(),
        StaticPoints().Geem6(),
      ],
      [],
      [
        StaticCircle().Geem1(),
      ],
      {
        StaticPoints().Geem4().getId: StaticPoints().Geem5().getId,
        StaticPoints().Geem5().getId: StaticPoints().Geem6().getId,
      },
    );
  }

  Char Haa() {
    return Char(
      48,
      "ح",
      "arabic/haa.png",
      [
        StaticPoints().Haa1(),
        StaticPoints().Haa2(),
        StaticPoints().Haa3(),
        StaticPoints().Haa4(),
        StaticPoints().Haa5(),
      ],
      [],
      [
        StaticCircle().Haa1(),
      ],
      {
        StaticPoints().Haa4().getId: StaticPoints().Haa5().getId,
      },
    );
  }

  Char Khaa() {
    return Char(
      49,
      "خ",
      "arabic/khaa.png",
      [
        StaticPoints().Khaa1(),
        StaticPoints().Khaa2(),
        StaticPoints().Khaa3(),
        StaticPoints().Khaa4(),
        StaticPoints().Khaa5(),
        StaticPoints().Khaa6(),
      ],
      [],
      [
        StaticCircle().Khaa1(),
      ],
      {
        StaticPoints().Khaa4().getId: StaticPoints().Khaa5().getId,
        StaticPoints().Khaa5().getId: StaticPoints().Khaa6().getId,
      },
    );
  }

  Char Dal() {
    return Char(
      50,
      "د",
      "arabic/dal.png",
      [
        StaticPoints().Dal1(),
        StaticPoints().Dal2(),
        StaticPoints().Dal3(),
      ],
      [],
      [],
      {},
    );
  }

  Char Thal() {
    return Char(
      51,
      "ذ",
      "arabic/thal.png",
      [
        StaticPoints().Thal1(),
        StaticPoints().Thal2(),
        StaticPoints().Thal3(),
        StaticPoints().Thal4(),
      ],
      [],
      [],
      {
        StaticPoints().Thal3().getId: StaticPoints().Thal4().getId,
      },
    );
  }

  Char Raa() {
    return Char(
      52,
      "ر",
      "arabic/raa.png",
      [
        StaticPoints().Raa1(),
        StaticPoints().Raa2(),
      ],
      [],
      [
        StaticCircle().Raa1(),
      ],
      {
        StaticPoints().Raa1().getId: StaticPoints().Raa2().getId,
      },
    );
  }

  Char Zai() {
    return Char(
      53,
      "ز",
      "arabic/zae.png",
      [
        StaticPoints().Zai1(),
        StaticPoints().Zai2(),
        StaticPoints().Zai3(),
      ],
      [],
      [
        StaticCircle().Zai1(),
      ],
      {
        StaticPoints().Zai1().getId: StaticPoints().Zai2().getId,
        StaticPoints().Zai2().getId: StaticPoints().Zai3().getId,
      },
    );
  }

  Char Sen() {
    return Char(
      54,
      "س",
      "arabic/sen.png",
      [
        StaticPoints().Sen1(),
        StaticPoints().Sen2(),
        StaticPoints().Sen3(),
        StaticPoints().Sen4(),
        StaticPoints().Sen5(),
        StaticPoints().Sen6(),
        StaticPoints().Sen7(),
        StaticPoints().Sen8(),
        StaticPoints().Sen9(),
        StaticPoints().Sen10(),
      ],
      [
        StaticArches().Sen1(),
        StaticArches().Sen2(),
        StaticArches().Sen3(),
      ],
      [],
      {
        StaticPoints().Sen2().getId: StaticPoints().Sen3().getId,
        StaticPoints().Sen5().getId: StaticPoints().Sen6().getId,
        StaticPoints().Sen8().getId: StaticPoints().Sen9().getId,
      },
    );
  }

  Char Shen() {
    return Char(
      55,
      "ش",
      "arabic/shen.png",
      [
        StaticPoints().Shen1(),
        StaticPoints().Shen2(),
        StaticPoints().Shen3(),
        StaticPoints().Shen4(),
        StaticPoints().Shen5(),
        StaticPoints().Shen6(),
        StaticPoints().Shen7(),
        StaticPoints().Shen8(),
        StaticPoints().Shen9(),
        StaticPoints().Shen10(),
        StaticPoints().Shen11(),
        StaticPoints().Shen12(),
        StaticPoints().Shen13(),
      ],
      [
        StaticArches().Shen1(),
        StaticArches().Shen2(),
        StaticArches().Shen3(),
      ],
      [],
      {
        StaticPoints().Shen2().getId: StaticPoints().Shen3().getId,
        StaticPoints().Shen5().getId: StaticPoints().Shen6().getId,
        StaticPoints().Shen8().getId: StaticPoints().Shen9().getId,
        StaticPoints().Shen10().getId: StaticPoints().Shen11().getId,
      },
    );
  }

  Char Sad() {
    return Char(
      56,
      "ص",
      "arabic/sad.jfif",
      [
        StaticPoints().Sad1(),
        StaticPoints().Sad2(),
        StaticPoints().Sad3(),
        StaticPoints().Sad4(),
        StaticPoints().Sad5(),
        StaticPoints().Sad6(),
        StaticPoints().Sad7(),
      ],
      [
        StaticArches().Sad1(),
        StaticArches().Sad2(),
      ],
      [],
      {
        StaticPoints().Sad5().getId: StaticPoints().Sad6().getId,
      },
    );
  }

  Char Dad() {
    return Char(
      57,
      "ض",
      "arabic/dad.jfif",
      [
        StaticPoints().Dad1(),
        StaticPoints().Dad2(),
        StaticPoints().Dad3(),
        StaticPoints().Dad4(),
        StaticPoints().Dad5(),
        StaticPoints().Dad6(),
        StaticPoints().Dad7(),
        StaticPoints().Dad8(),
      ],
      [
        StaticArches().Dad1(),
        StaticArches().Dad2(),
      ],
      [],
      {
        StaticPoints().Dad5().getId: StaticPoints().Dad6().getId,
        StaticPoints().Dad7().getId: StaticPoints().Dad8().getId,
      },
    );
  }

  Char Taaa() {
    return Char(
      58,
      "ط",
      "arabic/taa.jfif",
      [
        StaticPoints().Taaa1(),
        StaticPoints().Taaa2(),
        StaticPoints().Taaa3(),
        StaticPoints().Taaa4(),
        StaticPoints().Taaa5(),
        StaticPoints().Taaa6(),
      ],
      [
        StaticArches().Taaa1(),
      ],
      [],
      {
        StaticPoints().Taaa1().getId: StaticPoints().Taaa2().getId,
        StaticPoints().Taaa4().getId: StaticPoints().Taaa5().getId,
      },
    );
  }

  Char Thaaa() {
    return Char(
      59,
      "ظ",
      "arabic/zaa.jfif",
      [
        StaticPoints().Thaaa1(),
        StaticPoints().Thaaa2(),
        StaticPoints().Thaaa3(),
        StaticPoints().Thaaa4(),
        StaticPoints().Thaaa5(),
        StaticPoints().Thaaa6(),
        StaticPoints().Thaaa7(),
      ],
      [
        StaticArches().Thaaa1(),
      ],
      [],
      {
        StaticPoints().Thaaa1().getId: StaticPoints().Thaaa2().getId,
        StaticPoints().Thaaa4().getId: StaticPoints().Thaaa5().getId,
        StaticPoints().Thaaa6().getId: StaticPoints().Thaaa7().getId,
      },
    );
  }

  Char Ain() {
    return Char(
      60,
      "ع",
      "arabic/aeen.png",
      [
        StaticPoints().Ain1(),
        StaticPoints().Ain2(),
        StaticPoints().Ain3(),
      ],
      [
        StaticArches().Ain1(),
      ],
      [
        StaticCircle().Ain1(),
      ],
      {
        StaticPoints().Ain1().getId: StaticPoints().Ain2().getId,
        StaticPoints().Ain2().getId: StaticPoints().Ain3().getId,
      },
    );
  }

  Char Ghin() {
    return Char(
      61,
      "غ",
      "arabic/ghaen.png",
      [
        StaticPoints().Ghin1(),
        StaticPoints().Ghin2(),
        StaticPoints().Ghin3(),
        StaticPoints().Ghin4(),
      ],
      [
        StaticArches().Ghin1(),
      ],
      [
        StaticCircle().Ghin1(),
      ],
      {
        StaticPoints().Ain1().getId: StaticPoints().Ain2().getId,
        StaticPoints().Ain2().getId: StaticPoints().Ain3().getId,
        StaticPoints().Ain3().getId: StaticPoints().Ain4().getId,
      },
    );
  }

  Char Faa() {
    return Char(
      62,
      "ف",
      "arabic/faa.png",
      [
        StaticPoints().Faa1(),
        StaticPoints().Faa2(),
        StaticPoints().Faa3(),
        StaticPoints().Faa4(),
        StaticPoints().Faa5(),
        StaticPoints().Faa6(),
      ],
      [
        StaticArches().Faa1(),
      ],
      [],
      {
        StaticPoints().Faa1().getId: StaticPoints().Faa2().getId,
        StaticPoints().Faa5().getId: StaticPoints().Faa6().getId,
      },
    );
  }

  Char Kaf() {
    return Char(
      63,
      "ق",
      "arabic/kaaf.png",
      [
        StaticPoints().Kaf1(),
        StaticPoints().Kaf2(),
        StaticPoints().Kaf3(),
        StaticPoints().Kaf4(),
        StaticPoints().Kaf5(),
        StaticPoints().Kaf6(),
      ],
      [
        StaticArches().Kaf1(),
        StaticArches().Kaf2(),
      ],
      [],
      {
        StaticPoints().Kaf1().getId: StaticPoints().Kaf2().getId,
        StaticPoints().Kaf3().getId: StaticPoints().Kaf4().getId,
        StaticPoints().Kaf4().getId: StaticPoints().Kaf5().getId,
      },
    );
  }

  Char Kaff() {
    return Char(
      64,
      "ك",
      "arabic/kaf.jfif",
      [
        StaticPoints().Kaff1(),
        StaticPoints().Kaff2(),
        StaticPoints().Kaff3(),
        StaticPoints().Kaff4(),
        StaticPoints().Kaff5(),
        StaticPoints().Kaff6(),
        StaticPoints().Kaff7(),
      ],
      [
        StaticArches().Kaff1(),
      ],
      [],
      {
        StaticPoints().Kaff4().getId: StaticPoints().Kaff5().getId,
        StaticPoints().Kaff5().getId: StaticPoints().Kaff6().getId,
      },
    );
  }

  Char Lam() {
    return Char(
      65,
      "ل",
      "arabic/lam.png",
      [
        StaticPoints().Lam1(),
        StaticPoints().Lam2(),
        StaticPoints().Lam3(),
      ],
      [
        StaticArches().Lam1(),
      ],
      [],
      {
        StaticPoints().Lam2().getId: StaticPoints().Lam3().getId,
      },
    );
  }

  Char Mim() {
    return Char(
      66,
      "م",
      "arabic/mem.png",
      [
        StaticPoints().Mim1(),
        StaticPoints().Mim2(),
        StaticPoints().Mim3(),
      ],
      [],
      [],
      {},
    );
  }

  Char Non() {
    return Char(
      67,
      "ن",
      "arabic/non.png",
      [
        StaticPoints().Non1(),
        StaticPoints().Non2(),
        StaticPoints().Non3(),
        StaticPoints().Non4(),
        StaticPoints().Non5(),
      ],
      [
        StaticArches().Non1(),
      ],
      [],
      {
        StaticPoints().Non2().getId: StaticPoints().Non3().getId,
        StaticPoints().Non4().getId: StaticPoints().Non5().getId,
      },
    );
  }

  Char haa() {
    return Char(
      68,
      "ه",
      "arabic/haaa.png",
      [
        StaticPoints().haa1(),
        StaticPoints().haa2(),
        StaticPoints().haa3(),
        StaticPoints().haa4(),
        StaticPoints().haa5(),
      ],
      [
        StaticArches().haa1(),
        StaticArches().haa2(),
      ],
      [],
      {
        StaticPoints().haa1().getId: StaticPoints().haa2().getId,
        StaticPoints().haa3().getId: StaticPoints().haa4().getId,
      },
    );
  }

  Char Waw() {
    return Char(
      69,
      "و",
      "arabic/waw.jfif",
      [
        StaticPoints().Waw1(),
        StaticPoints().Waw2(),
        StaticPoints().Waw3(),
        StaticPoints().Waw4(),
      ],
      [
        StaticArches().Waw1(),
        StaticArches().Waw2(),
        StaticArches().Waw3(),
      ],
      [],
      {
        StaticPoints().Waw1().getId: StaticPoints().Waw2().getId,
        StaticPoints().Waw2().getId: StaticPoints().Waw3().getId,
        StaticPoints().Waw3().getId: StaticPoints().Waw4().getId,
      },
    );
  }

  Char Yaa() {
    return Char(
      70,
      "ي",
      "arabic/yaa.png",
      [
        StaticPoints().Yaa1(),
        StaticPoints().Yaa2(),
        StaticPoints().Yaa3(),
        StaticPoints().Yaa4(),
        StaticPoints().Yaa5(),
      ],
      [
        StaticArches().Yaa1(),
        StaticArches().Yaa2(),
      ],
      [],
      {
        StaticPoints().Yaa1().getId: StaticPoints().Yaa2().getId,
        StaticPoints().Yaa2().getId: StaticPoints().Yaa3().getId,
        StaticPoints().Yaa3().getId: StaticPoints().Yaa4().getId,
      },
    );
  }

//////////////////////////////////////////////////////////////////////
  List<Char> ArabicLetter() {
    return [
      Alif(),
      Baa(),
      Taa(),
      Thaa(),
      Geem(),
      Haa(),
      Khaa(),
      Dal(),
      Thal(),
      Raa(),
      Zai(),
      Sen(),
      Shen(),
      Sad(),
      Dad(),
      Taaa(),
      Thaaa(),
      Ain(),
      Ghin(),
      Faa(),
      Kaf(),
      Kaff(),
      Lam(),
      Mim(),
      Non(),
      haa(),
      Waw(),
      Yaa(),
    ];
  }

  List<Char> capital() {
    return [
      A(),
      B(),
      C(),
      D(),
      E(),
      F(),
      G(),
      H(),
      I(),
      J(),
      K(),
      L(),
      M(),
      N(),
      O(),
      P(),
      Q(),
      R(),
      S(),
      T(),
      U(),
      V(),
      W(),
      X(),
      Y(),
      Z(),
    ];
  }

  List<Char> small() {
    return [
      a(),
      b(),
      c(),
      d(),
      e(),
      f(),
      g(),
      h(),
      i(),
      j(),
      k(),
      l(),
      m(),
      n(),
      o(),
      p(),
      q(),
      r(),
      s(),
      t(),
      u(),
      v(),
      w(),
      x(),
      y(),
      z(),
    ];
  }

  List<Char> numbers() {
    return [
      zero(),
      one(),
      two(),
      three(),
      four(),
      five(),
      six(),
      seven(),
      eight(),
      nine()
    ];
  }

  List<Char> ArabicNumbers() {
    return [
      zeroAr(),
      oneAr(),
      twoAr(),
      threeAr(),
      fourAr(),
      fiveAr(),
      sixAr(),
      sevenAr(),
      eightAr(),
      nineAr(),
    ];
  }

  Char zeroAr() {
    return Char(
      0,
      "٠",
      "num/00.jpg",
      [
        StaticPoints().zeroAr1(),
      ],
      [],
      [],
      {},
    );
  }

  Char oneAr() {
    return Char(
      1,
      "١",
      "num/11.jfif",
      [
        StaticPoints().oneAr1(),
        StaticPoints().oneAr2(),
      ],
      [],
      [],
      {},
    );
  }

  Char twoAr() {
    return Char(
      2,
      "٢",
      "num/22.jpg",
      [
        StaticPoints().twoAr1(),
        StaticPoints().twoAr2(),
        StaticPoints().twoAr3(),
      ],
      [],
      [],
      {},
    );
  }

  Char threeAr() {
    return Char(
      3,
      "٣",
      "num/33.jfif",
      [
        StaticPoints().threeAr1(),
        StaticPoints().threeAr2(),
        StaticPoints().threeAr3(),
        StaticPoints().threeAr4(),
      ],
      [
        StaticArches().threeAr1(),
        StaticArches().threeAr2(),
      ],
      [],
      {
        StaticPoints().threeAr1().getId: StaticPoints().threeAr2().getId,
        StaticPoints().threeAr2().getId: StaticPoints().threeAr3().getId,
      },
    );
  }

  Char fourAr() {
    return Char(
      4,
      "٤",
      "num/44.jpg",
      [
        StaticPoints().fourAr1(),
        StaticPoints().fourAr2(),
        StaticPoints().fourAr3(),
      ],
      [
        StaticArches().fourAr1(),
        StaticArches().fourAr2(),
      ],
      [],
      {
        StaticPoints().fourAr1().getId: StaticPoints().fourAr2().getId,
        StaticPoints().fourAr2().getId: StaticPoints().fourAr3().getId,
      },
    );
  }

  Char fiveAr() {
    return Char(
      5,
      "٥",
      "num/55.jpg",
      [
        StaticPoints().fiveAr1(),
        StaticPoints().fiveAr2(),
        StaticPoints().fiveAr3(),
      ],
      [],
      [
        StaticCircle().fiveAr1(),
      ],
      {
        StaticPoints().fiveAr1().getId: StaticPoints().fiveAr2().getId,
        StaticPoints().fiveAr2().getId: StaticPoints().fiveAr3().getId,
      },
    );
  }

  Char sixAr() {
    return Char(
      6,
      "٦",
      "num/66.jpg",
      [
        StaticPoints().sixAr1(),
        StaticPoints().sixAr2(),
        StaticPoints().sixAr3(),
      ],
      [],
      [],
      {},
    );
  }

  Char sevenAr() {
    return Char(
      7,
      "٧",
      "num/77.jpg",
      [
        StaticPoints().sevenAr1(),
        StaticPoints().sevenAr2(),
        StaticPoints().sevenAr3(),
      ],
      [],
      [],
      {},
    );
  }

  Char eightAr() {
    return Char(
      8,
      "٨",
      "num/88.jpg",
      [
        StaticPoints().eightAr1(),
        StaticPoints().eightAr2(),
        StaticPoints().eightAr3(),
      ],
      [],
      [],
      {},
    );
  }

  Char nineAr() {
    return Char(
      9,
      "٩",
      "num/99.jpg",
      [
        StaticPoints().nineAr1(),
        StaticPoints().nineAr2(),
        StaticPoints().nineAr3(),
        StaticPoints().nineAr4(),
      ],
      [
        StaticArches().nineAr1(),
        StaticArches().nineAr2(),
      ],
      [],
      {
        StaticPoints().nineAr1().getId: StaticPoints().nineAr2().getId,
        StaticPoints().nineAr2().getId: StaticPoints().nineAr3().getId,
      },
    );
  }
}
