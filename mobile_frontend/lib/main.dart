import 'dart:io';

import 'package:flutter/material.dart';

import 'package:mobile_frontend/screens/home/dashboard.dart';
import 'package:mobile_frontend/screens/home/profile.dart';
import 'package:mobile_frontend/screens/home/actuality.dart';
import 'package:mobile_frontend/screens/home/calendar.dart';
import 'package:mobile_frontend/screens/home/time_table.dart';
import 'package:mobile_frontend/screens/home/settings.dart';
import 'package:mobile_frontend/screens/home/todo_list.dart';
import 'package:mobile_frontend/screens/home/notifications.dart';

import 'package:mobile_frontend/screens/authenticate/login.dart';
import 'package:mobile_frontend/screens/authenticate/register.dart';

import 'package:mobile_frontend/screens/wrapper.dart';
import 'package:mobile_frontend/services/dataBase.dart';
import 'package:path_provider/path_provider.dart';



void main(){
  runApp(StudentApp());
}

class StudentApp extends StatefulWidget {
  // This widget is the root of the application.
  @override
  _StudentAppState createState() => _StudentAppState();
}

class _StudentAppState extends State<StudentApp> {

  Future<Directory?>? _appDocumentsDirectory;

  @override
  void initState() {
    super.initState();
    _appDocumentsDirectory = getApplicationDocumentsDirectory();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _appDocumentsDirectory,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData){
          DataBase.initHiveDB(snapshot.data);
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
              '/emploiDuTemps': (context) => TimeTable(),
              '/actualite': (context) => Actuality(),
              '/settings': (context) => Settings(),
            },
            home: Wrapper(),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}