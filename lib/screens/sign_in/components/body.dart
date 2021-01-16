import 'package:flutter/material.dart';
import 'package:myFirstApp/screens/sign_in/components/sign_form.dart';
import 'package:myFirstApp/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // child: SizedBox(
      //  width: double.infinity,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/Group.png',
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(22),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Text(
                            'لوريم إيبسوم هو ببساطة نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى ويستخدم في صناعات المطابع ودور النشر.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 13,
                                color: Color(0xff6D6D6D))))),

                SignForm(),

                //NoAccountText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
