import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/screens/notification/component/body.dart';

class NotificationScreen extends StatelessWidget {
  static String routeName = "/Notification";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      body: Body(),
    ));
  }
}
