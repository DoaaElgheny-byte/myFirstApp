import 'package:flutter/material.dart';
import 'package:myFirstApp/component/header.dart';
import 'package:myFirstApp/models/notifiction_model.dart';
import 'package:myFirstApp/screens/notification/component/notification_card.dart';
import 'package:myFirstApp/size_config.dart';

class Body extends StatelessWidget {
  final List<NotificationModel> notificationData = [
    NotificationModel(id: 0, title: 'Notif1', date: '27-11-21'),
    NotificationModel(id: 1, title: 'Notif2', date: '27-11-21'),
    NotificationModel(id: 2, title: 'Notif3', date: '27-11-21'),
    NotificationModel(id: 3, title: 'Notif4', date: '27-11-21'),
    NotificationModel(id: 4, title: 'Notif5', date: '27-11-21')
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(
            title: 'الاشعارات',
            rightIconName: Icons.arrow_forward_sharp,
          ),
          Container(
            height: getProportionateScreenHeight(700),
            child: ListView.builder(
                itemBuilder: (context, index) =>
                    NotificationCard(notificationData[index]),
                itemCount: notificationData.length),
          )
        ],
      ),
    );
  }
}
