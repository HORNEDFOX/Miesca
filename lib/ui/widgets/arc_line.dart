import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class ArcLine extends StatelessWidget {
  final double radius;
  final BuildContext context;

  const ArcLine({Key? key, required this.context, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(width: MediaQuery.of(context).size.width, radius: radius),
    );
  }
}

class MyPainter extends CustomPainter {
  double width;
  double radius;

  MyPainter({required this.width, required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        dashPath(
            Path()
            ..addOval(Rect.fromCircle(center: Offset(width - 80, 80.0), radius: radius)),
            dashArray: CircularIntervalList<double>([4, 4]),
            dashOffset: DashOffset.percentage(0.005)),
        Paint()
          ..color = Colors.black12
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
