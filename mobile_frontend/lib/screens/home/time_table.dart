import 'package:flutter/material.dart';
import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:mobile_frontend/models/session.dart';
import 'package:mobile_frontend/shared/app_bar.dart';
import 'package:mobile_frontend/shared/constants.dart';

class TimeTable extends StatefulWidget {

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {

  List<Color> textColor= List.filled(6, Colors.black);
  List<Color> weekDayColor = List.filled(6, Colors.white);

  String domaine = "Informatique";
  int semester = 1;
  String section = "A";

  List<List<Session>> allSessions = [
    [new Session(0, null, "Algorithme", "Cours", "Amphi : G", true, "8:00", "9:30")],
    [
      new Session(0, 1, "Algorithme", "TP", "Salle : TP107", false, "9:40", "11:10"),
      new Session(0, 3, "CRI", "TD", "Salle : 205", false, "9:40", "11:10")
    ],
    [new Session(0, null, "CRI", "Cours", "Amphi : A", true, "11:20", "12:50")],
    [new Session(0, 1, "Algorithme", "TP", "Salle : TP108", false, "13:00", "14:30")],
    [new Session(0, 2, "CRI", "TD", "Salle : 135", false, "14:00", "14:30")],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(pageTitle:'Emploi Du Temps'),
      drawer: NavigationDrawer(),
      body: Container(
        color: backgroundTimeTableColor,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:12.0, bottom:12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "$domaine",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Semestre $semester",
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
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(23.0),),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  WeekDay(0, "Sam"),
                  WeekDay(1, "Dim"),
                  WeekDay(2, "Lun"),
                  WeekDay(3, "Mar"),
                  WeekDay(4, "Mer"),
                  WeekDay(5, "Jeu"),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: allSessions.length,
                itemBuilder: (context, index){
                  if(allSessions[index].length == 1){
                    return NormalSession(allSessions[index][0]);
                  } else {
                    return MultipleSession(allSessions[index]);
                  }
                }
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: backgroundTimeTableColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  child: Divider(
                    height: 5,
                    thickness: 5,
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget NormalSession(Session session){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.grey[200],
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Card(
          margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      session.timeLaps(),
                      style: TextStyle(
                        color: textColor1,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      session.module,
                      style: TextStyle(
                        color: textColor2,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      session.seanceType,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      session.classroom,
                      style: TextStyle(
                        color: textColor1,
                        fontSize: 13,
                      ),
                    ),
                  ]
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget MultipleSession(List<Session> sessions){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.grey[200],
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Card(
          margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0, bottom: 8),
                  child: Text(
                    sessions[0].timeLaps(),
                    style: TextStyle(
                      color: textColor3,
                      fontSize: 12,
                    ),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: sessions.map((quote) => SubSession(quote)).toList(),
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget SubSession(Session session){
    return Container(

      child: Card(
          color: mainAppColor1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Groupe " + session.group.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        session.module,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        session.seanceType,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        session.classroom,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ]
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget WeekDay(int weekIndex, String weekToPrint){
    return Expanded(
      flex:1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            initializeLists();
            textColor[weekIndex] = Colors.white;
            weekDayColor[weekIndex] = mainAppColor1;
          });
          // load the time table for that specific day from the time table model
          // build the list view of the time table
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23.0),),
            color: weekDayColor[weekIndex],
          ),
          child: Center(
              child: Text(
                "$weekToPrint",
                style: TextStyle(color: textColor[weekIndex]),
              )
          ),
        ),
      ),
    );
  }

  void initializeLists(){
    for(int i=0; i<6; i++){
      textColor[i] = Colors.black;
      weekDayColor[i] = Colors.white;
    }
  }
}