import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/screens/customers/component/body.dart';
import 'package:myFirstApp/screens/customers/new_Customer_screen.dart';

class CustomersScreen extends StatelessWidget {
  static String routeName = "/Customers";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
        body: Body(),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: kPrimaryColor,
            onPressed: () {
              Navigator.pushNamed(context, NewCustomerScreen.routeName);
            })));
  }
}
