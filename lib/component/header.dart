import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/size_config.dart';

class Header extends StatelessWidget {
  final String title;
  final List<Widget> leftIconName;
  final IconData rightIconName;
  const Header({this.title = '', this.leftIconName, this.rightIconName});

  @override
  Widget build(BuildContext context) {
    return Direction(
      SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(105),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffFF27AE60),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      rightIconName,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(20),
                      color: Colors.white,
                    ),
                  ),
                  leftIconName != null
                      ? SizedBox(
                          width: getProportionateScreenWidth(100),
                          height: getProportionateScreenHeight(100),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: leftIconName),
                        )
                      : SizedBox(
                          width: getProportionateScreenWidth(70),
                        )
                ]),
          ),
        ),
      ),
    );
  }
}
