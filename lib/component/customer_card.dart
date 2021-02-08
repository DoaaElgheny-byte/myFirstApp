import 'package:flutter/material.dart';
import 'package:myFirstApp/component/dotted_seperatot.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/models/customer_model.dart';
import 'package:myFirstApp/size_config.dart';

class CustomerCard extends StatelessWidget {
  final CustomerModel customerItem;
  CustomerCard(this.customerItem);

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Image.asset(
                        customerItem.image,
                        height: getProportionateScreenWidth(50),
                        width: getProportionateScreenWidth(50),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        customerItem.customername,
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
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10, bottom: 1),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "المنطقة:${customerItem.zone}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, top: 10, bottom: 1),
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_activity_sharp,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "النشاط: ${customerItem.activity}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 15, left: 20, top: 10, bottom: 1),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("#",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Text(
                                    "زيارات: ${customerItem.visitNo}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("${customerItem.totalPrice} ر.ل",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    )),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 7),
                                  child: Icon(
                                    Icons.info_outline,
                                    color: kPrimaryColor,
                                  ),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ],
                )
              ])),
        ));
  }
}
