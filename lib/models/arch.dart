// import 'dart:developer' as logging;
import 'dart:math';
import 'dart:ui';

import '../models/arch_angle.dart';
import '../models/point.dart';
import '../static/static.dart';

class Arch {
  double _id;
  Point _point1;
  Point _point2;
  ArchAngle _archAngle;
  double _start = 0;
  double _end = 0;

  Arch(this._id, this._point1, this._point2, this._archAngle);

  Arch.withStartAndEnd(this._id, this._point1, this._point2, this._archAngle,
      this._start, this._end);

  ArchAngle get getArchAngle => _archAngle;

  set setArchAngle(ArchAngle value) {
    _archAngle = value;
  }

  double get getId => _id;

  set setId(double value) {
    _id = value;
  }

  Point get getPoint1 => _point1;

  set setPoint1(Point value) {
    _point1 = value;
  }

  Point get getPoint2 => _point2;

  set setPoint2(Point value) {
    _point2 = value;
  }

  double get getStart => _start;

  set setStart(double value) {
    _start = value;
  }

  double get getEnd => _end;

  set setEnd(double value) {
    _end = value;
  }

  void draw(Canvas canvas, Paint paint,double size) {
    double radius = dist(_point1.getOffset, _point2.getOffset) / 2;
    switch (_archAngle) {
      case ArchAngle.upToRightToBottom:
        {
          //logging.log("upToRightToBottom");
          canvas.save();
          canvas.translate(_point1.getOffset.dx, _point1.getOffset.dy + radius);
          double a = 0;
          for (a = -1 * (pi / 2) + _start; a < (pi / 2) + _end; a = a + 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.upToLeftToBottom:
        {
          //logging.log("upToLeftToBottom");
          canvas.save();
          canvas.translate(_point1.getOffset.dx, _point1.getOffset.dy + radius);
          double a = 0;
          for (a = 3 * (pi / 2) + _start; a > (pi / 2) + _end; a = a - 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.rightToUpToLeft:
        {
          //logging.log("rightToUpToLeft");
          canvas.save();
          canvas.translate(_point2.getOffset.dx + radius, _point2.getOffset.dy);
          double a = 0;
          for (a = (2 * pi) + _start * 0; a > pi + _end; a = a - 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.rightToBottomToLeft:
        {
          //logging.log("rightToBottomToLeft");
          canvas.save();
          canvas.translate(_point2.getOffset.dx + radius, _point2.getOffset.dy);
          double a = 0;
          for (a = 0 + _start; a < pi + _end; a = a + 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.leftToUpToRight:
        {
          //logging.log("leftToUpToRight");
          canvas.save();
          canvas.translate(_point1.getOffset.dx + radius, _point1.getOffset.dy);
          double a = 0;
          for (a = pi + _start; a < 2 * pi + _end; a = a + 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }

      case ArchAngle.leftToBottomToRight:
        {
          //logging.log("leftToBottomToRight");
          canvas.save();
          canvas.translate(_point1.getOffset.dx + radius, _point1.getOffset.dy);
          double a = 0;
          for (a = pi + _start; a > 0 + _end; a = a - 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.bottomToLeftTop:
        {
          //logging.log("bottomToLeftTop");
          canvas.save();
          canvas.translate(_point2.getOffset.dx, _point2.getOffset.dy + radius);
          double a = 0;
          for (a = 3 * (pi / 2) + _start; a > (pi / 2) + _end; a = a - 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      case ArchAngle.bottomToRightTop:
        {
          //logging.log("bottomToRightTop");
          canvas.save();
          canvas.translate(_point2.getOffset.dx, _point2.getOffset.dy + radius);
          double a = 0;
          for (a = 3 * (pi / 2) + _start; a > (pi / 2) + _end; a = a - 0.01) {
            double x = cos(a) * radius;
            double y = sin(a) * radius;
            canvas.drawCircle(Offset(-x, y), size, paint);
          }
          canvas.restore();
          break;
        }
      default:
        {
          //logging.log('default');
        }
    }
  }
}
