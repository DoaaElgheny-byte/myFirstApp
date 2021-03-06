import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/component/visit_card.dart';
import 'package:myFirstApp/size_config.dart';
// This is the best practice

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      Header(title: 'شركة الحمد', rightIconName: Icons.arrow_forward_sharp),
      Container(
        height: getProportionateScreenHeight(450),
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(5)),
        child: GridView.count(
          crossAxisSpacing: getProportionateScreenHeight(40),
          mainAxisSpacing: getProportionateScreenWidth(5),
          childAspectRatio: 1,
          crossAxisCount: 2,
          children: <Widget>[
            VistCard(
                image: "assets/images/delivery-truck.png",
                title: "تسليم",
                flag: 1),
            VistCard(
                image: "assets/images/delivery-truck.png",
                title: "تحصيل",
                flag: 2),
            VistCard(
                image: "assets/images/delivery-truck.png",
                title: "مرتجع",
                flag: 3),
            VistCard(
                image: "assets/images/delivery-truck.png",
                title: "جرد",
                flag: 4),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
            right: 15,
            left: 15,
            top: getProportionateScreenHeight(10),
            bottom: getProportionateScreenHeight(10)),
        child: VistCard(
            image: "assets/images/delivery-truck.png",
            title: "تسليم",
            isGrid: false,
            flag: 1),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(15)),
        child: DefaultButton(
          hasIcon: false,
          iconName: null,
          text: "انهاء الزيارة",
          press: () {
            // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          },
        ),
      ),
    ]));
  }
}
