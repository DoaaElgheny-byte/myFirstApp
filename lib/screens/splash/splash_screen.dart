import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';
import 'package:myFirstApp/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);

    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/mainBack.png",
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(''),
            backgroundColor: Colors.transparent,
          ),
          body: Body(),
        )
      ],
    );

    // return Scaffold(
    //   body: Body(),
    // );
  }
}
