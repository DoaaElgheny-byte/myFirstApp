import 'package:flutter/material.dart';
import 'package:myFirstApp/component/Drawer_item.dart';
import 'package:myFirstApp/screens/visit/visit_screen.dart';
import 'package:myFirstApp/size_config.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: getProportionateScreenWidth(300),
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: getProportionateScreenWidth(150),
              color: Color(0xffFF27AE60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: getProportionateScreenWidth(200),
                        top: 10,
                        bottom: 0),
                    child: Image.asset(
                      'assets/images/delivery-truck.png',
                      // height: 3,
                      // width: 3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, top: 10, bottom: 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/images/Profile Image.png',
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("Ahmed@gmail.com",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Text("Ahmed@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 20),
                  child: Text("+2 223 154 466",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
            DrawerItem(
                title: 'الرئيسية',
                icon: Icons.home_outlined,
                tabHandler: () =>
                    Navigator.of(context).pushReplacementNamed('/')),
            DrawerItem(
                title: 'زيارة عميل',
                icon: Icons.verified_user_outlined,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'استلام بضاعة من المخزن',
                icon: Icons.filter_alt_rounded,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'ترجيع بضاعه للمخزن',
                icon: Icons.inventory,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'تحويل بضاعة لمندوب',
                icon: Icons.transform_outlined,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'استلام بضاعه من المندوب',
                icon: Icons.delivery_dining,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'عهده البضائع الحالية',
                icon: Icons.delivery_dining,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'كشف التحصيلات النقدية',
                icon: Icons.money_rounded,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'عملائي ',
                icon: Icons.people,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
            DrawerItem(
                title: 'عن التطبيق ',
                icon: Icons.info,
                tabHandler: () =>
                    Navigator.pushNamed(context, VisitScreen.routeName)),
          ],
        ),
      ),
    );
  }
}
