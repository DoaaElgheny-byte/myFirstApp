import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      // appBar: AppBar(
      //   title: Text("home"),
      // ),
      body: Body(),
      // floatingActionButton: new FloatingActionButton(
      //     elevation: 0.0,
      //     child: new Icon(Icons.add),
      //     backgroundColor: kPrimaryColor,
      //     onPressed: () {})
    ));
  }
}
