import 'package:flutter/material.dart';
import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:mobile_frontend/screens/home/category_scroller.dart';
import 'package:mobile_frontend/screens/home/schedule_scroller.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Color(0xff43B485),
        elevation: 0.0,
      ),
      drawer: NavigationDrawer(),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 5.0),
                color: Color(0xff43B485),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '    Here is a summary of your activity!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  color: Color(0xff43B485),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: CategoryScroller(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Color(0xffF5F8F6),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        '  Upcoming schedules',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: ScheduleScroller(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
