import 'package:flutter/material.dart';

import 'dart:math' as math;

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: AspectRatio(
        aspectRatio: 1,
        child: CustomPaint(
          painter: CirclePainter(),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path()
      ..addOval(
        Rect.fromCenter(
          center: size.center(Offset(0.0, 0.0)),
          width: size.width,
          height: size.height,
        ),
      );

    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.fill
        ..strokeWidth = 2
        ..color = Colors.blue,
    );
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;
}
