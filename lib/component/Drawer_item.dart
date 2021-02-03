import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tabHandler;
  DrawerItem({this.title, this.icon, this.tabHandler});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ListTile(
        leading: Icon(
          icon,
          size: 24,
          color: Colors.pink,
        ),
        title: Text(title,
            style: TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontWeight: FontWeight.w800
        )),
       onTap: tabHandler,     
      ),
      Divider(color: Colors.black45,)
    ]
    );
  }
}
