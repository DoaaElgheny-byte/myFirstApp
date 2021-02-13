import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';

class Footer extends StatelessWidget {
  final Widget widgetItem;
  final bool isBoxdecoration;
  final double height;
  Footer({this.widgetItem, this.isBoxdecoration = false, this.height = 100.0});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 90,
      color: Colors.transparent,
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(height),
        decoration: isBoxdecoration
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)))
            : null,
        alignment: Alignment.bottomCenter,
        child: widgetItem,
      ),
    );
  }
}
