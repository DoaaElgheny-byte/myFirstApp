import 'package:flutter/material.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/models/item_model.dart';

class ItemCard extends StatelessWidget {
  final ItemModel itemModel;
  ItemCard(this.itemModel);

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
              ])),
        ));
  }
}
