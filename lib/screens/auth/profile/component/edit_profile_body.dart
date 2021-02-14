import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/footer.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/screens/auth/sign_in/sign_in_screen.dart';

import 'package:myFirstApp/size_config.dart';

import 'PasswordRow.dart';

class EditProfileBody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<EditProfileBody> {
  TextEditingController currentPasswordController = TextEditingController()..text = 'holla';
  bool isCurrentPassSecure = true;

  TextEditingController newPasswordController = TextEditingController()..text = 'sherbeniiii';
  bool isNewPassSecure = true;

  TextEditingController confirmNewPasswordController = TextEditingController()..text = 'sherbeniiii';
  bool isConfirmNewPassSecure = true;

  String personalImg="assets/images/mainBack.png";

  void dispose() {
    // Clean up the controller when the widget is disposed.
    currentPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();
    super.dispose();
  }

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
                      Padding(
                            padding: const EdgeInsets.all(5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Stack(
                                  children: [
                                     Image.asset(
                                        personalImg,
                                        fit: BoxFit.cover,
                                        width: 100,
                                        height: 100,
                                      ),
                                    InkWell(
                                      onTap: ()=> print('tapped'),
                                      child: Container(
                                        child: Icon(
                                          Icons.camera_alt_rounded,
                                          color: Colors.green,
                                        ),
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
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
                                PasswordRow(
                                  title: 'كلمه المرور الحاليه',
                                  controller: currentPasswordController,
                                  isSecure: isCurrentPassSecure,
                                  makeSecure: () {
                                    this.setState(() {
                                      isCurrentPassSecure =
                                          !isCurrentPassSecure;
                                    });
                                  },
                                  onChangeTxt: (value) =>
                                      print(currentPasswordController.text),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                PasswordRow(
                                  title: 'كلمه المرور الجديده',
                                  controller: newPasswordController,
                                  isSecure: isNewPassSecure,
                                  makeSecure: () {
                                    this.setState(() {
                                      isNewPassSecure = !isNewPassSecure;
                                    });
                                  },
                                  onChangeTxt: (value) =>
                                      print(newPasswordController.text),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                PasswordRow(
                                  title: 'تأكيد كلمه المرور الجديده ',
                                  controller: confirmNewPasswordController,
                                  isSecure: isConfirmNewPassSecure,
                                  makeSecure: () {
                                    this.setState(() {
                                      isConfirmNewPassSecure =
                                          !isConfirmNewPassSecure;
                                    });
                                  },
                                  onChangeTxt: (value) =>
                                      print(confirmNewPasswordController.text),
                                ),
                                Divider(color: Colors.black, height: 50),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(0),
                                      vertical:
                                          getProportionateScreenHeight(5)),
                                  child: DefaultButton(
                                    hasIcon: false,
                                    iconName: null,
                                    text: "حفظ التعديلات",
                                    press: () => Navigator.pop(context),
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
