import 'package:flutter/material.dart';
import 'package:mobile_frontend/screens/home/main_drawer.dart';
import 'package:mobile_frontend/screens/home/dashboard.dart';
import 'package:mobile_frontend/screens/home/home.dart';
import 'package:mobile_frontend/screens/home/profile.dart';
import 'package:mobile_frontend/screens/home/actualite.dart';
import 'package:mobile_frontend/screens/home/calendar.dart';
import 'package:mobile_frontend/screens/home/time_table.dart';
import 'package:mobile_frontend/screens/home/settings.dart';
import 'package:mobile_frontend/screens/home/todo_list.dart';
import 'package:mobile_frontend/screens/home/notifications.dart';

import 'package:mobile_frontend/screens/authenticate/login.dart';
import 'package:mobile_frontend/screens/authenticate/register.dart';
import 'package:mobile_frontend/screens/authenticate/register_student.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Lato"
    ),
    initialRoute: '/login',
    routes: {
      '/': (context) => Home(),
      '/register': (context) => Register(),
      '/register_student': (context) => RegisterStudent(),
      '/login': (context) => Login(),
      '/profile': (context) => Profile(),
      '/todoList': (context) => TodoList(),
      '/calendar': (context) => Calendar(),
      '/dashboard': (context) => Dashboard(),
      '/notifications': (context) => NotificationsWidget(),
      '/emploiDuTemps': (context) => EmploiDuT(),
      '/actualite': (context) => Actualite(),
      '/settings': (context) => Settings(),
    },
  ));
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      drawer: MainDrawer(),
    );
  }
}
