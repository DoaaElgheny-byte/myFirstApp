import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/screens/auth/sign_in/sign_in_screen.dart';
import 'package:myFirstApp/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcomwScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: [
      Container(
        // height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: getProportionateScreenHeight(70)),
        child: Image.asset('assets/images/splashIcon.png', fit: BoxFit.contain),
      ),
      Center(
        child: Container(
          width: double.infinity,
          child:
              Image.asset('assets/images/welcomeLogo.png', fit: BoxFit.contain),
        ),
      ),
      Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.294,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(20)),
                    child: Text(
                      'مرحبا بك في التطبيق',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              Theme.of(context).textTheme.bodyText1.fontSize,
                          fontWeight:
                              Theme.of(context).textTheme.bodyText1.fontWeight),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(40),
                        vertical: getProportionateScreenHeight(10)),
                    child: Text(
                      'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              Theme.of(context).textTheme.bodyText2.fontSize,
                          fontWeight:
                              Theme.of(context).textTheme.bodyText2.fontWeight),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35.0, vertical: 2),
                    child: DefaultButton(
                      text: 'تسجيل الدخول',
                      hasIcon: true,
                      iconName: Icons.arrow_back_sharp,
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                  ),
                ],
              )),
        ),
      ]),
    ]));
  }
}
