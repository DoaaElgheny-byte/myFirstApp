import 'package:flutter/material.dart';
import 'package:myFirstApp/models/notifiction_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationItem;
  NotificationCard(this.notificationItem);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: FlutterLogo(),
          onTap: () {},
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.alarm,
                size: 20,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8),
                child: Text(
                  '${notificationItem.date}',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
            ],
          ),
          title: Text('${notificationItem.title}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          // trailing: Icon(Icons.more_vert),
        ),
        Divider(
          color: Colors.grey,
          height: 5,
        )
      ],
    );
  }
}
