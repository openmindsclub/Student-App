import 'package:mobile_frontend/models/User.dart';
import 'package:mobile_frontend/screens/authenticate/login.dart';
import 'package:mobile_frontend/screens/home/dashboard.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  User user;
  bool getUserData = false;

  @override
  void initState() {
    User.getUser().then((result) {
      setState((){
        user = result;
        getUserData = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    if (!getUserData) {
      // This is what we show while we're loading
      return new Container();
    }

    // uplaod the user from the database

    // return either the Home or Authenticate widget
    if (user == null || !user.activeSession){
      return Login();
    } else {
      return Dashboard();
    }
  }
}