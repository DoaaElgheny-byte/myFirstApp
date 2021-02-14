import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';

import 'component/edit_profile_body.dart';

class EditProfile extends StatelessWidget {
  static String routeName = "/EditProfile";
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
      backgroundColor: Color(0xffFF27AE60),
      body: EditProfileBody(),
    ));
  }
}