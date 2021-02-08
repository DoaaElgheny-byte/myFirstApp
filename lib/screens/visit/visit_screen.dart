import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';

import 'components/body.dart';

class VisitScreen extends StatelessWidget {
  static String routeName = "/visit";
  @override
  Widget build(BuildContext context) {
    return Direction(
      Scaffold(
        body: Body(),
      ),
    );
  }
}
