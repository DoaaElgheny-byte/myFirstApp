import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/screens/customers/component/new_customer_body.dart';

class NewCustomerScreen extends StatelessWidget {
  static String routeName = "/NewCustomer";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      body: NewCustomerBody(),
    ));
  }
}
