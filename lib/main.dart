import 'package:flutter/material.dart';
import 'package:im_stepper/src/gauge_stepper/circular_scrolling.dart';
import 'package:im_stepper/src/gauge_stepper/gauge_stepper.dart';

import 'stepper.dart';

void main() {
  runApp(IconStepperDemo());
}

class IconStepperDemo extends StatefulWidget {
  @override
  _IconStepperDemo createState() => _IconStepperDemo();
}

class _IconStepperDemo extends State<IconStepperDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon Stepper Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: MyList(),
        ),
      ),
    );
  }
}
