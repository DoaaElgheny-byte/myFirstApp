import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';

class PasswordRow extends StatelessWidget {
  final String title;
  final Function onChangeTxt;
  final Function makeSecure;
  final dynamic controller;
  final String inputValue;
  final bool isSecure;
  //Colors.grey[400]
  PasswordRow(
      {this.title,
      this.onChangeTxt,
      this.controller,
      this.inputValue = '',
      this.isSecure,
      this.makeSecure});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(5)),
          child: Text(title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenHeight(5)),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              // color: Colors.green.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextField(
              onChanged: (value) {
                onChangeTxt(value);
              },
              controller: controller,
              autocorrect: false,
              keyboardType: TextInputType.text,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              obscureText: isSecure,
              obscuringCharacter: '*',
              cursorColor: Colors.grey,
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black54, fontSize: 15),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                suffixIcon: InkWell(
                  onTap: () {
                    makeSecure();
                  },
                  child: Icon(
                    isSecure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
