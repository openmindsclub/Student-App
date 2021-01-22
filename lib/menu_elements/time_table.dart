import 'package:flutter/material.dart';
import 'package:usthb_app/main_drawer.dart';

class EmploiDuT extends StatefulWidget {
  @override
  _EmploiDuTState createState() => _EmploiDuTState();
}

class _EmploiDuTState extends State<EmploiDuT> {

  String domaine = "Informatique";
  int semester = 1;
  String section = "A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emploi Du Temps',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Color(0xff43B485),
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[

            ],
          ),
        ],
      ),
    );
  }
}
