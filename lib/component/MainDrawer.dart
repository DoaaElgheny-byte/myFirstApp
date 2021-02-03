import 'package:flutter/material.dart';
import 'package:myFirstApp/component/Drawer_item.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network(
              'https://images.unsplash.com/photo-1537843147573-84a454793cf6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2QlMjBsb2dvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.cover,
            ),
          ),
          DrawerItem(
              title: 'Meals',
              icon: Icons.restaurant_menu,
              tabHandler: () =>
                  Navigator.of(context).pushReplacementNamed('/')),
          DrawerItem(
              title: 'Filters',
              icon: Icons.filter_alt_rounded,
              tabHandler: () {}
              // Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName)
              ),
        ],
      ),
    );
  }
}
