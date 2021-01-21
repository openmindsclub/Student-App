import 'package:flutter/material.dart';
import 'main.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.greenAccent[400],
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
              color: Colors.green,
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
    );
  }
}
