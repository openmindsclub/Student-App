import 'package:flutter/material.dart';
import 'package:usthb_app/dart_src/activity.dart';

class CategoryScroller extends StatefulWidget {
  @override
  _CategoryScrollerState createState() => _CategoryScrollerState();
}

class _CategoryScrollerState extends State<CategoryScroller> {

  List<Activity> activities = [
    Activity(activity: 'Tasks', totalActivities: 7, done: 4),
    Activity(activity: 'Notifications', totalActivities: 8, done: 6),
    Activity(activity: 'Exams', totalActivities: 10, done: 9)
  ];

  Widget activityTemplate(singleActivity) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 20),
      height: 190,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 80,
              width: 80,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: singleActivity.done / singleActivity.totalActivities,
                    backgroundColor: Colors.grey,
                    strokeWidth: 7.0,
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Colors.pink[400]),
                  ),
                  Center(child: buildProgress(singleActivity)),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              singleActivity.activity,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: activities.map((singleActivity) => activityTemplate(singleActivity)).toList(),
          ),
        ),
      ),
    );
  }
}

Widget buildProgress(singleActivity) {
  if (singleActivity.isDone()) {
    return Icon(
      Icons.done,
      color: Colors.green,
      size: 56,
    );
  } else {
    return Text(
      '${(singleActivity.totalActivities)}',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.pinkAccent,
        fontSize: 24,
      ),
    );
  }
}
