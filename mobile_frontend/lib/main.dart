import 'package:flutter/material.dart';

import 'package:mobile_frontend/screens/home/dashboard.dart';
import 'package:mobile_frontend/screens/home/profile.dart';
import 'package:mobile_frontend/screens/home/actualite.dart';
import 'package:mobile_frontend/screens/home/calendar.dart';
import 'package:mobile_frontend/screens/home/time_table.dart';
import 'package:mobile_frontend/screens/home/settings.dart';
import 'package:mobile_frontend/screens/home/todo_list.dart';
import 'package:mobile_frontend/screens/home/notifications.dart';

import 'package:mobile_frontend/screens/authenticate/login.dart';
import 'package:mobile_frontend/screens/authenticate/register.dart';

import 'package:mobile_frontend/screens/wrapper.dart';



void main() => runApp(StudentApp());

class StudentApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Lato"
      ),
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/dashboard': (context) => Dashboard(),
        '/profile': (context) => Profile(),
        '/todoList': (context) => TodoList(),
        '/calendar': (context) => Calendar(),
        '/notifications': (context) => NotificationsWidget(),
        '/emploiDuTemps': (context) => EmploiDuT(),
        '/actualite': (context) => Actualite(),
        '/settings': (context) => Settings(),
      },
      home: Wrapper(),
    );
  }
}