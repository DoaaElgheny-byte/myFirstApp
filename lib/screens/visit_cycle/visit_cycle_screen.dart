import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/screens/visit_cycle/component/body.dart';

class VisitCycleScreen extends StatelessWidget {
  static String routeName = "/VisitCycle";

  @override
  Widget build(BuildContext context) {
    final int paramsData = ModalRoute.of(context).settings.arguments as int;
    return Direction(Scaffold(
      body: Body(paramsData: paramsData),
    ));
  }
}
