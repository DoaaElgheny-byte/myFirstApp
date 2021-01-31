import 'package:flutter/material.dart';

class Direction extends StatelessWidget {
  final Widget mainWidget;
  Direction(this.mainWidget);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: mainWidget,
    );
  }
}