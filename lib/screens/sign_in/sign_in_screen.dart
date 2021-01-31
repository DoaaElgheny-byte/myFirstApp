import 'package:flutter/material.dart';
import '../../Direction.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Direction(
      Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Body(),
    ));
  }
}
