import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/screens/login_success/login_success_screen.dart';
import 'package:myFirstApp/screens/sign_in/sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcomwScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(alignment: Alignment.topCenter, children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100),
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
                    padding: const EdgeInsets.only(top: 40),
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
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                    padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 2),
                    child: DefaultButton(
                      text: 'تسجيل الدخول',
                      hasIcon:true,
                      iconName: Icons.arrow_back_sharp,
                      press: () {
                        Navigator.pushNamed(
                            context, SignInScreen.routeName);
                      },
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(top:20),
                  //   width: 300,
                  //   child: RaisedButton.icon(
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  //     color: Color.fromRGBO(255,146,15,1),
                  //     onPressed: (){Navigator.pushNamed(context, SignInScreen.routeName); },
                  //     icon:Padding(
                  //       padding: EdgeInsets.only(left: 5 , top: 15, bottom:15),
                  //       child: Icon(
                  //         Icons.arrow_back_sharp,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //     label: Padding(
                  //       padding: EdgeInsets.only(left: 100 , top: 15, bottom:15),
                  //       child: Text(
                  //         'تسجيل الدخول',
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                  //             fontWeight: Theme.of(context).textTheme.bodyText1.fontWeight,
                  //             fontFamily: Theme.of(context).textTheme.bodyText2.fontFamily
                  //           ),
                  //       ),
                  //     )
                  //     ),
                  // ),
                ],
              )),
        ),
      ]),
    ]));
  }
}
