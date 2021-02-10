import 'package:flutter/material.dart';
import 'package:myFirstApp/component/dotted_seperatot.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/models/recieve_model.dart';
import 'package:myFirstApp/size_config.dart';

class RecieveCard extends StatelessWidget {
  final RecieveModel recievedItem;
  RecieveCard(this.recievedItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {},
          child: Material(
              elevation: 3,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: getProportionateScreenWidth(15)),
                        child: Image.asset(
                          recievedItem.image,
                          height: getProportionateScreenWidth(50),
                          width: getProportionateScreenWidth(50),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: getProportionateScreenWidth(15)),
                        child: Text(
                          recievedItem.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionateScreenHeight(20),
                          left: getProportionateScreenWidth(20)),
                      child: Text(
                        recievedItem.date,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(16),
                      vertical: getProportionateScreenHeight(10)),
                  child: Text(
                    recievedItem.content,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: DottedSperator(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(13),
                      vertical: getProportionateScreenHeight(5)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: kPrimaryColor,
                        size: 30,
                      ),
                      Text(
                        recievedItem.notes,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ])),
        ));
  }
}
