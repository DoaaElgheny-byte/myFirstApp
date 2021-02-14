import 'package:flutter/material.dart';
import 'package:myFirstApp/component/footer.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/screens/auth/profile/edit_profile_screen.dart';
import 'package:myFirstApp/screens/auth/sign_in/sign_in_screen.dart';

import 'package:myFirstApp/size_config.dart';

import 'profileRow.dart';

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
                  leftIconName: [
                    InkWell(
                      onTap: ()=>Navigator.pushNamed(context, EditProfile.routeName),
                      child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          )),
                    ),
                  ],
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ProfileRow(
                                    iconName: Icons.location_on,
                                    title: 'المنطقه',
                                    content: 'المعادي'),
                                SizedBox(
                                    height: getProportionateScreenHeight(15)),
                                ProfileRow(
                                    iconName: Icons.email_sharp,
                                    title: 'البريد الألكتروني',
                                    content: 'DODO@Nermeen.M7medSayed'),
                                SizedBox(
                                    height: getProportionateScreenHeight(15)),
                                ProfileRow(
                                    iconName: Icons.phone_android_outlined,
                                    title: 'الهاتف',
                                    content: '01062425848'),
                                Divider(color: Colors.black, height: 50),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, SignInScreen.routeName);
                                  },
                                  child: ProfileRow(
                                    iconName: Icons.logout,
                                    hasBackground: false,
                                    iconBackgroundColor: Colors.red,
                                    title: 'تسجيل الخروج',
                                    content: '',
                                    hasContent: false,
                                    isLogOut: true,
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
