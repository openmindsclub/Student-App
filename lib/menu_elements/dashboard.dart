import 'package:flutter/material.dart';
import 'package:usthb_app/main_drawer.dart';
import 'package:usthb_app/category_scroller.dart';

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
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20.0),
            color: Colors.green,
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    '    Here is a summary of your activity!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
              color: Colors.green,
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CategoryScroller(),
            ),
          ),
        ],
      ),
    );
  }
}
