import 'package:flutter/material.dart';
import 'package:myFirstApp/screens/intro/welcomeScreen.dart';
import '../../constants.dart';
import '../../size_config.dart';


class Splash extends StatefulWidget {
  static String routeName = '/splash';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, WelcomeScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.center,
                  colors: [
                Color.fromRGBO(81, 190, 127, 1),
                Color.fromRGBO(39, 147, 96, 1)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Image.asset('assets/images/splashIcon.png',
                        fit: BoxFit.contain),
                  ),
                  FittedBox(
                    child: Text(
                      'اسم التطبيق',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: Theme.of(context).textTheme.bodyText1.fontSize ,
                          fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: FittedBox(
                      child: Text(
                        'اسم الموصل',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize:Theme.of(context).textTheme.bodyText2.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .fontWeight),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/splashLogo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
