import 'package:flutter/material.dart';
import 'package:mobile_frontend/main_drawer.dart';
import 'package:mobile_frontend/menu_elements/dashboard.dart';
import 'package:mobile_frontend/home.dart';
import 'package:mobile_frontend/menu_elements/profile.dart';
import 'package:mobile_frontend/menu_elements/actualite.dart';
import 'package:mobile_frontend/menu_elements/calendar.dart';
import 'package:mobile_frontend/menu_elements/time_table.dart';
import 'package:mobile_frontend/menu_elements/settings.dart';
import 'package:mobile_frontend/menu_elements/todo_list.dart';
import 'package:mobile_frontend/menu_elements/notifications.dart';
import 'package:mobile_frontend/menu_elements/login.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Lato"
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
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
