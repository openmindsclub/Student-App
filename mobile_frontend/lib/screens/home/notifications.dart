import 'package:flutter/material.dart';
import 'package:mobile_frontend/models/notif.dart';

import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:mobile_frontend/models/notif.dart';
import 'package:mobile_frontend/shared/app_bar.dart';
import 'package:mobile_frontend/shared/constants.dart';

class NotificationsWidget extends StatefulWidget {
  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {

  Future<List<Notif>>? _notificationFuture;

  @override
  void initState() {
    _notificationFuture = getData();
    super.initState();
  }

  Future<List<Notif>>? getData() async{
    await Notif.openHiveBox();
    Notif.fillHiveDB();
    return Notif.getNotifications();
  }

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
      body: FutureBuilder(
        future: _notificationFuture,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData){
            List<Notif> notifs = snapshot.data;
            return ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: notifs.map((notification) => notifTemplate(notification)).toList(),
            );
          } else {
            return CircularProgressIndicator();
          }
        }
      ),
    );
  }
}
