import 'package:flutter/material.dart';
import 'package:myFirstApp/component/default_button.dart';
import 'package:myFirstApp/component/footer.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/component/item_Card.dart';
import 'package:myFirstApp/models/item_model.dart';
import 'package:myFirstApp/size_config.dart';

class Body extends StatelessWidget {
  final int paramsData;

  Body({this.paramsData});

  final List<ItemModel> itemData = [
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
    ItemModel(id: 0, title: 'Notif1', date: '27-11-21'),
    ItemModel(id: 1, title: 'Notif2', date: '27-11-21'),
    ItemModel(id: 2, title: 'Notif3', date: '27-11-21'),
    ItemModel(id: 3, title: 'Notif4', date: '27-11-21'),
    ItemModel(id: 4, title: 'Notif5', date: '27-11-21'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: constraints.copyWith(
            minHeight: constraints.maxHeight,
            maxHeight: double.infinity,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: <Widget>[
                Header(
                  title: paramsData == 1
                      ? 'تسليم'
                      : paramsData == 3
                          ? 'مرتجع'
                          : paramsData == 4
                              ? 'جرد'
                              : '',
                  rightIconName: Icons.arrow_forward_sharp,
                ),
                Container(
                  height: getProportionateScreenHeight(600),
                  child: ListView.builder(
                      itemBuilder: (context, index) =>
                          ItemCard(itemData[index]),
                      itemCount: itemData.length),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Footer(
                          widgetItem: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(15),
                            vertical: getProportionateScreenHeight(15)),
                        child: DefaultButton(
                          hasIcon: false,
                          iconName: null,
                          color: Colors.green,
                          text: paramsData == 1
                              ? 'تسليم'
                              : paramsData == 3
                                  ? 'مرتجع'
                                  : paramsData == 4
                                      ? 'جرد'
                                      : '',
                          press: () {
                            // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                          },
                        ),
                      )) // Your footer widget
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
