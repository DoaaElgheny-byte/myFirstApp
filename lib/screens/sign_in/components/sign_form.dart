import 'package:flutter/material.dart';
import 'package:myFirstApp/component/custom_surfix_icon.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/form_error.dart';

import 'package:myFirstApp/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          // SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          // SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 20, top: 5),
                child: Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ],
          ),
          // SizedBox(height: getProportionateScreenHeight(20)),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: DefaultButton(
              text: "تسجيل الدخول",
              press: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  // if all are valid then go to success screen
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  buildPasswordFormField() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          textAlign: TextAlign.right,
          obscureText: true,
          onSaved: (newValue) => password = newValue,
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kPassNullError);
            } else if (value.length >= 8) {
              removeError(error: kShortPassError);
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty) {
              addError(error: kPassNullError);
              return "";
            } else if (value.length < 8) {
              addError(error: kShortPassError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "",
            hintText: "كلمة المرور",
            border: InputBorder.none,

            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon:
                CustomSurffixIcon(svgIcon: "assets/icons/metro-lock.svg"),
          ),
        ),
      ),
    );
  }

  buildEmailFormField() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          textAlign: TextAlign.right,
          keyboardType: TextInputType.emailAddress,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kEmailNullError);
            } else if (emailValidatorRegExp.hasMatch(value)) {
              removeError(error: kInvalidEmailError);
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty) {
              addError(error: kEmailNullError);
              return "";
            } else if (!emailValidatorRegExp.hasMatch(value)) {
              addError(error: kInvalidEmailError);
              return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "",
            hintText: "اسم المستخدم",

            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon:
                CustomSurffixIcon(svgIcon: "assets/icons/metro-user.svg"),
          ),
        ),
      ),
    );
  }
}
