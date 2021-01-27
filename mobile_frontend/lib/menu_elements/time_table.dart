import 'package:flutter/material.dart';
import 'package:mobile_frontend/main_drawer.dart';

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
      body: Container(
        color: Color(0xffF5F8F6),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:12.0, bottom:12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Domaine: $domaine",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Semestre: $semester",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Section: $section",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "2020/2021",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:30.0, right:30.0),
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(40.0),),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child: Center(child: Text("Sam"))),
                  Expanded(child: Center(child: Text("Dim"))),
                  Expanded(child: Center(child: Text("Lun"))),
                  Expanded(child: Center(child: Text("Mar"))),
                  Expanded(child: Center(child: Text("Mer"))),
                  Expanded(child: Center(child: Text("Jeu"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
