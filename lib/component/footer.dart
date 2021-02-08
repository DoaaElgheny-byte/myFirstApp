import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';

class Footer extends StatelessWidget {
  final Widget widgetItem;
  Footer(this.widgetItem);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 90,
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(100),
        alignment: Alignment.bottomCenter,
        child: widgetItem,
      ),
    );
  }
}
