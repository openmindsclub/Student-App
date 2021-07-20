import 'package:flutter/material.dart';

import 'package:mobile_frontend/shared/constants.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: mainAppColor1,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
                color: navigationDrawerColor,
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
