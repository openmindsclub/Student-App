import 'package:flutter/material.dart';

import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:mobile_frontend/models/notif.dart';
import 'package:mobile_frontend/shared/app_bar.dart';
import 'package:mobile_frontend/shared/constants.dart';

class NotificationsWidget extends StatefulWidget {
  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {

  List<Notif> notifs = [
    Notif(
        title: 'Acutualite',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Evenement',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Acutualite',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Evenement',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Acutualite',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Evenement',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Acutualite',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    Notif(
        title: 'Evenement',
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
  ];

  Widget notifTemplate(notification) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right:12.0),
              height: 80,
              width: 5,
              color: mainAppColor1,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 15,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:5.0),
                        child: Text(
                          notification.title,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    notification.date_string(),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: textColor1,
                    ),
                  ),
                  Text(
                    notification.content,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: textColor1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(pageTitle:'Notifications'),
      drawer: NavigationDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: notifs.map((notification) => notifTemplate(notification)).toList(),
      ),
    );
  }
}
