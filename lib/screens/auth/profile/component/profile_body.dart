import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:myFirstApp/component/custom_card.dart';
import 'package:myFirstApp/component/footer.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/models/visit_model.dart';
import 'package:myFirstApp/screens/auth/sign_in/sign_in_screen.dart';

import 'package:myFirstApp/size_config.dart';

class ProfileBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<ProfileBody> {
  // @override
  // void initState() {
  // super.initState();
  // CarService().getList().then((value) => print(value));
  // }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
            minHeight: constraints.maxHeight,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                Header(
                  title: '',
                  rightIconName: Icons.arrow_forward_sharp,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/mainBack.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10)),
                        child: Text(
                          "asdway",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Footer(
                        height: 550,
                        isBoxdecoration: true,
                        widgetItem: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(
                              getProportionateScreenHeight(50),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(15),
                                      vertical:
                                          getProportionateScreenHeight(15)),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    // color: Colors.green.withOpacity(0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                          width:
                                              getProportionateScreenWidth(35),
                                          height:
                                              getProportionateScreenHeight(45),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.green.withOpacity(0.2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Colors.green,
                                            size: 25,
                                          )),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(
                                                    20)),
                                        child: Column(
                                          children: [
                                            Text(
                                              "المنطقه",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top:
                                                      getProportionateScreenHeight(
                                                          8)),
                                              child: Text(
                                                "المعادي",
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(15),
                                      vertical:
                                          getProportionateScreenHeight(15)),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    // color: Colors.green.withOpacity(0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                          width:
                                              getProportionateScreenWidth(35),
                                          height:
                                              getProportionateScreenHeight(45),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.green.withOpacity(0.2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          child: Icon(
                                            Icons.email_sharp,
                                            color: Colors.green,
                                            size: 25,
                                          )),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(
                                                    20)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "البريد الالكتروني",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top:
                                                      getProportionateScreenHeight(
                                                          8)),
                                              child: Text(
                                                "DODO@Nermeen.m7medsayed",
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(15),
                                      vertical:
                                          getProportionateScreenHeight(15)),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    // color: Colors.green.withOpacity(0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                          width:
                                              getProportionateScreenWidth(35),
                                          height:
                                              getProportionateScreenHeight(45),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.green.withOpacity(0.2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Colors.green,
                                            size: 25,
                                          )),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                getProportionateScreenWidth(
                                                    20)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "الهاتف",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top:
                                                      getProportionateScreenHeight(
                                                          8)),
                                              child: Text(
                                                "01062425848",
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 50,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, SignInScreen.routeName);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(5),
                                    ),
                                    decoration: BoxDecoration(
                                      // color: Colors.grey[100],
                                      // color: Colors.green.withOpacity(0.2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                            width:
                                                getProportionateScreenWidth(35),
                                            height:
                                                getProportionateScreenHeight(
                                                    45),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.2),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Icon(
                                              Icons.logout,
                                              color: Colors.red[300],
                                              size: 25,
                                            )),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  getProportionateScreenWidth(
                                                      20)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "تسجيل الخروج",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ) // Your footer widget
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
