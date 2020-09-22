import 'package:flutter/material.dart';

import 'dart:math' as math;

class SemiCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: AspectRatio(
        aspectRatio: 4 / 2,
        child: CustomPaint(painter: SemiCirclePainter(), size: Size.infinite),
      ),
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / double.infinity),
          width: size.width,
          height: size.height * 2,
        ),
        0 * math.pi / 180,
        180 * math.pi / 180,
      )
      ..close();

    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 2
        ..color = Colors.blueGrey[100],
    );
  }

  @override
  bool shouldRepaint(SemiCirclePainter oldDelegate) => false;
}
