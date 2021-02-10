import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';

import '../../constants.dart';
import 'components/body.dart';

class RecieveCycleScreen extends StatelessWidget {
  static String routeName = "/recieveScreen";
  final bool hasIcon;
  RecieveCycleScreen({this.hasIcon=false});
  @override
  Widget build(BuildContext context) {
    return Direction(
      Scaffold(
          body: Body(),
          floatingActionButton: hasIcon? new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.add),
              backgroundColor: kPrimaryColor,
              onPressed: () {}):null),
    );
  }
}
