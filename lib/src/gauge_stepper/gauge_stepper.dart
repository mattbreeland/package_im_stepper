import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:im_stepper/src/gauge_stepper/semi_circle.dart';

import 'pointer.dart';

class GaugeStepper extends StatefulWidget {
  @override
  _GaugeStepperState createState() => _GaugeStepperState();
}

class _GaugeStepperState extends State<GaugeStepper>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  double height = 0.0;
  double width = 0.0;

  double top = 0.0;

  @override
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 60),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    animation = Tween(begin: 0.0, end: 360.0).animate(controller);

    controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        width = constraints.maxWidth;
        height = width / 2;

        return Stack(
          children: [
            Positioned(
              top: 0.0,
              width: width,
              child: RotatedBox(
                quarterTurns: 2,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: SemiCircle(),
                ),
              ),
            ),
            Positioned(
              top: height / 2,
              left: width / 4,
              height: height,
              child: Transform.rotate(
                angle: animation.value * math.pi / 180,
                child: Pointer(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget test() {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.gamepad),
    );
  }
}
