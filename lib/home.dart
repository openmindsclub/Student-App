import 'package:flutter/material.dart';
import 'package:usthb_app/main_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
