import 'package:flutter/material.dart';
import 'package:usthb_app/main_drawer.dart';
import 'package:usthb_app/menu_elements/category_scroller.dart';
import 'package:usthb_app/menu_elements/schedule_scroller.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xff43B485),
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.0),
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
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: CategoryScroller(),
                ),
              ),
            ],
          ),
          Container(
            color: Color(0xffF5F8F6),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10.0),
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
                Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: ScheduleScroller(),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
