import 'package:flutter/material.dart';
import 'package:myFirstApp/Direction.dart';
import 'package:myFirstApp/component/MainDrawer.dart';
import 'package:myFirstApp/constants.dart';
import 'package:myFirstApp/screens/home/components/body.dart';
import 'package:badges/badges.dart';
import 'package:myFirstApp/screens/notification/notification_screen.dart';
import 'package:myFirstApp/size_config.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Direction(Scaffold(
        key: _scaffoldKey,
        drawer: MainDrawer(),
        appBar: AppBar(
            toolbarHeight: 55,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  ' وشركاءه الحج عجه',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Text(
                  'اهلا',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            actions: [
              //Notification
              Container(
                width: getProportionateScreenWidth(55),
                height: getProportionateScreenHeight(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Badge(
                      badgeContent: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      badgeColor: kPrimaryColor,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationScreen.routeName);
                  },
                ),
              ),
            ],
            backgroundColor: Color(0xffFF27AE60),
            leading: Container(
              width: getProportionateScreenWidth(55),
              height: getProportionateScreenHeight(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  );
                },
              ),
            )),
        body: Body(),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.add),
            backgroundColor: kPrimaryColor,
            onPressed: () {})));
  }
}
