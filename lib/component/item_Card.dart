import 'package:flutter/material.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/models/item_model.dart';
import 'package:myFirstApp/size_config.dart';

class ItemCard extends StatefulWidget {
  final ItemModel itemModel;
  ItemCard(this.itemModel);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  TextEditingController editingController = TextEditingController();
  String inputValue = '';
  int counter = 1;
  increaseCounter() {
    this.setState(() {
      counter = ++counter;
    });
  }

  decreseCounter() {
    this.setState(() {
      counter = --counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: () {
            // onCardPress();
          },
          child: Material(
            elevation: 1,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            type: MaterialType.card,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterLogo(
                    size: 50,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(295.7),
                      height: getProportionateScreenHeight(40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مياه دساني معدنيه',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          InkWell(
                            child: Container(
                                width: getProportionateScreenWidth(35),
                                height: getProportionateScreenHeight(35),
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
                                ),
                                child: Icon(
                                  Icons.delete_outline_sharp,
                                  color: Colors.red,
                                  size: 25,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(295.5),
                      height: getProportionateScreenHeight(35),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: increaseCounter,
                            child: Container(
                                width: getProportionateScreenWidth(28),
                                height: getProportionateScreenHeight(30),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(20)),
                            child: Text('$counter'),
                          ),
                          InkWell(
                            onTap: decreseCounter,
                            child: Container(
                                width: getProportionateScreenWidth(28),
                                height: getProportionateScreenHeight(28),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 18,
                                )),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: getProportionateScreenWidth(20),
                                    left: getProportionateScreenWidth(10)),
                                child: Text(
                                  'عنب',
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(5)),
                                child: Text(
                                  '$counter X',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(5)),
                                child: Text(
                                  '  200 ر.ل',
                                  style: TextStyle(color: kPrimaryColor),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: getProportionateScreenWidth(295.7),
                      height: getProportionateScreenHeight(65),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: getProportionateScreenWidth(120),
                            height: getProportionateScreenHeight(45),
                            padding:
                                EdgeInsets.all(getProportionateScreenHeight(3)),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey.withOpacity(0.3)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              onChanged: (value) {
                                this.setState(() {
                                  inputValue = value;
                                });
                              },
                              controller: editingController,
                              autocorrect: false,
                              keyboardType: TextInputType.number,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                hintText: "إضافه خصم",
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(25.5)),
                            child: Container(
                                width: getProportionateScreenWidth(100),
                                height: getProportionateScreenHeight(40),
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: getProportionateScreenHeight(15)),
                                  child: Text(
                                    '200 ر.ل',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
