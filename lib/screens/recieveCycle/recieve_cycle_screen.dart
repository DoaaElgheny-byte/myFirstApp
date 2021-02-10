import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';

import '../../constants.dart';
import 'components/body.dart';

class RecieveCycleScreen extends StatelessWidget {
  static String routeName = "/recieveScreen";
  @override
  Widget build(BuildContext context) {
    final bool hasIcon = ModalRoute.of(context).settings.arguments as bool;
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
