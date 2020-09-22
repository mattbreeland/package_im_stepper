import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: MyDelegate((context, index) {
            return Text('testing');
          }),
        )
      ],
    );
  }
}

class MyDelegate extends SliverChildBuilderDelegate {
  MyDelegate(builder) : super(builder);
}
