import 'package:flutter/material.dart';
import 'main_drawer.dart';
import 'package:usthb_app/menu_elements/dashboard.dart';
import 'package:usthb_app/home.dart';
import 'package:usthb_app/menu_elements/profile.dart';
import 'package:usthb_app/menu_elements/actualite.dart';
import 'package:usthb_app/menu_elements/calendar.dart';
import 'package:usthb_app/menu_elements/emploi_du_temps.dart';
import 'package:usthb_app/menu_elements/settings.dart';
import 'package:usthb_app/menu_elements/todo_list.dart';
import 'package:usthb_app/menu_elements/notifications.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Lato"
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/profile': (context) => Profile(),
      '/todoList': (context) => TodoList(),
      '/calendar': (context) => Calendar(),
      '/dashboard': (context) => Dashboard(),
      '/notifications': (context) => Notifications(),
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
