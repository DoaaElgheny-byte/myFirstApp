import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/screens/customers/component/body.dart';

class CustomersScreen extends StatelessWidget {
  static String routeName = "/Notification";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      body: Body(),
    ));
  }
}
