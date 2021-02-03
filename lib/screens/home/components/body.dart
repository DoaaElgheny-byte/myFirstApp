import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFF27AE60),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //       width: double.infinity,
          //       height: MediaQuery.of(context).size.height * 0.294,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(40),
          //               topRight: Radius.circular(40)),
          //           color: Colors.white),
          //       child: Column(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(
          //                 top: getProportionateScreenHeight(20)),
          //             child: Text(
          //               'مرحبا بك في التطبيق',
          //               style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize:
          //                       Theme.of(context).textTheme.bodyText1.fontSize,
          //                   fontWeight: Theme.of(context)
          //                       .textTheme
          //                       .bodyText1
          //                       .fontWeight),
          //             ),
          //           ),
          //           Container(
          //             alignment: Alignment.center,
          //             padding: EdgeInsets.symmetric(
          //                 horizontal: getProportionateScreenWidth(40),
          //                 vertical: getProportionateScreenHeight(10)),
          //             child: Text(
          //               'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
          //               textAlign: TextAlign.center,
          //               style: TextStyle(
          //                   color: Colors.black,
          //                   fontSize:
          //                       Theme.of(context).textTheme.bodyText2.fontSize,
          //                   fontWeight: Theme.of(context)
          //                       .textTheme
          //                       .bodyText2
          //                       .fontWeight),
          //             ),
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.symmetric(
          //                 horizontal: 35.0, vertical: 2),
          //             child: DefaultButton(
          //               text: 'تسجيل الدخول',
          //               hasIcon: true,
          //               iconName: Icons.arrow_back_sharp,
          //               press: () {
          //                 Navigator.pushNamed(
          //                     context, NotificationScreen.routeName);
          //               },
          //             ),
          //           ),
          //         ],
          //       )),
          // ),
        ],
      ),
    );
  }
}
