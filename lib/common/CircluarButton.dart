import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';

class CircluarButton extends StatelessWidget {
  final String buttonImg;
  final Function onButtonPressed;
  final String buttonTxt;
  CircluarButton({this.buttonImg, this.onButtonPressed, this.buttonTxt});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(100),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // border color & shape
            // decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     border: Border.all(width: 4, color: kPrimaryColor)),
            child: InkWell(
              onTap: onButtonPressed,
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Image.asset(
                  buttonImg,
                  fit: BoxFit.contain,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            buttonTxt,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        )
      ]),
    );
  }
}
