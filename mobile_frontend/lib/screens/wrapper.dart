import 'package:mobile_frontend/models/User.dart';
import 'package:mobile_frontend/screens/authenticate/login.dart';
import 'package:mobile_frontend/screens/home/dashboard.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // uplaod the user from the database
    User user;
    // return either the Home or Authenticate widget
    if (user == null || !user.activeSession){
      return Login();
    } else {
      return Dashboard();
    }
  }
}