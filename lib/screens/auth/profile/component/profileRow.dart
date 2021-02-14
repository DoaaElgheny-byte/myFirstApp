import 'package:flutter/material.dart';
import 'package:myFirstApp/size_config.dart';

class ProfileRow extends StatelessWidget {
  final String title;
  final String content;
  final bool hasContent;
  final IconData iconName;
  final bool hasBackground;
  final bool isLogOut;
  final Color iconBackgroundColor;
  //Colors.grey[400]
  ProfileRow(
      {this.title,
      this.content,
      this.hasContent = true,
      this.iconName,
      this.hasBackground = true,
      this.iconBackgroundColor = Colors.green,
      this.isLogOut = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isLogOut ? 0 : getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15)),
      decoration: BoxDecoration(
        color: hasBackground ? Colors.grey[100] : Colors.transparent,
        // color: Colors.green.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Container(
              width: getProportionateScreenWidth(35),
              height: getProportionateScreenHeight(45),
              decoration: BoxDecoration(
                color: iconBackgroundColor.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                iconName,
                color: iconBackgroundColor,
                size: 25,
              )),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: hasContent ? getProportionateScreenHeight(8) : 0),
                  child: hasContent
                      ? Text(
                          content,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )
                      : null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
