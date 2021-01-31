import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key key, this.text, this.press, this.width, this.hasIcon, this.iconName})
      : super(key: key);
  final String text;
  final double width;
  final Function press;
  final bool hasIcon;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: hasIcon
          ? FlatButton.icon(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: kPrimaryColor,
              onPressed: press,
              icon: Padding(
                padding: const EdgeInsets.only(right:100.0),
                child: Icon(
                  iconName,
                  color: Colors.white,
                ),
              ),
              label: Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white,
                ),
              ),
            )
          : FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: kPrimaryColor,
              onPressed: press,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
