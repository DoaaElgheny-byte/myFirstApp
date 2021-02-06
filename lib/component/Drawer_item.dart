import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tabHandler;
  DrawerItem({this.title, this.icon, this.tabHandler});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        leading: Icon(
          icon,
          size: 23,
          color: Color(0xffFF27AE60),
        ),
        title: Text(title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500)),
        onTap: tabHandler,
      ),
      // Divider(
      //   color: Colors.black45,
      // )
    ]);
  }
}
