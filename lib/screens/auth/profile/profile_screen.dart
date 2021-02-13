import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/screens/auth/profile/component/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/Profile";

  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      backgroundColor: Color(0xffFF27AE60),
      body: ProfileBody(),
    ));
  }
}
