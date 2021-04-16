import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xff43B485),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    //textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Student Name',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Todo list',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/todoList');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Calendar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/calendar');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notification_important,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/notifications');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.ballot,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Emploi du temps',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/emploiDuTemps');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wysiwyg,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Actualité',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/actualite');
              },
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.settings_rounded,
                color: Color(0xff26BC50),
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
