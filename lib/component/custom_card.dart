import 'package:flutter/material.dart';
import 'package:myFirstApp/common/CircluarButton.dart';
import 'package:myFirstApp/component/dotted_seperatot.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/models/visit_model.dart';
import 'package:myFirstApp/screens/visit_cycle/visit_cycle_screen.dart';
import 'package:myFirstApp/size_config.dart';

class CustomCard extends StatelessWidget {
  final VisitModel visitItem;
  CustomCard(this.visitItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            // onCardPress();
          },
          child: Material(
              elevation: 6,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 240),
                  child: Text(
                    "قيد التنفيذ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Image.asset(
                        visitItem.image,
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        visitItem.companyname,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DottedSperator(),
                ),
                Row(
                  children: [
                    CircluarButton(
                      buttonImg: 'assets/images/Group28972.png',
                      buttonTxt: 'تحصيل',
                      onButtonPressed: () {},
                    ),
                    CircluarButton(
                      buttonImg: 'assets/images/Group28972.png',
                      buttonTxt: 'تسليم',
                      onButtonPressed: () =>Navigator.of(context)
                      .pushNamed(VisitCycleScreen.routeName, arguments: 1),
                    ),
                    CircluarButton(
                      buttonImg: 'assets/images/Group28972.png',
                      buttonTxt: 'مرتجع',
                      onButtonPressed: () =>Navigator.of(context)
                      .pushNamed(VisitCycleScreen.routeName, arguments: 3),
                    ),
                    CircluarButton(
                      buttonImg: 'assets/images/Group28972.png',
                      buttonTxt: 'جرد',
                      onButtonPressed: () =>Navigator.of(context)
                      .pushNamed(VisitCycleScreen.routeName, arguments: 4),
                    )
                  ],
                )
              ])),
        ));
  }
}
