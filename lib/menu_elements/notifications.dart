import 'package:flutter/material.dart';
import 'package:usthb_app/main_drawer.dart';
import 'package:usthb_app/dart_src/notif.dart';

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
              color: Color(0xff43B485),
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
                      color: Color(0xff7D7A78),
                    ),
                  ),
                  Text(
                    notification.content,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff7D7A78),
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
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Color(0xff43B485),
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: notifs.map((notification) => notifTemplate(notification)).toList(),
      ),
    );
  }
}
