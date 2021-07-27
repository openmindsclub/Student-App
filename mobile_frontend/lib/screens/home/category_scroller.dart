import 'package:flutter/material.dart';
import 'package:mobile_frontend/models/activity.dart';
import 'package:mobile_frontend/models/category.dart';
import 'package:mobile_frontend/shared/constants.dart';

class CategoryScroller extends StatefulWidget {
  @override
  _CategoryScrollerState createState() => _CategoryScrollerState();
}

class _CategoryScrollerState extends State<CategoryScroller> {

  List<Category> categories = [
    Category(category: 'Tasks', totalActivities: 7, done: 4),
    Category(category: 'Notifications', totalActivities: 8, done: 8),
    Category(category: 'Exams', totalActivities: 10, done: 9)
  ];

  Widget activityTemplate(singleActivity) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 20),
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 10.0),
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
                    backgroundColor:  Color(0xffDADFE1),
                    strokeWidth: 8.0,
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        progressIndicatorColor),
                  ),
                  Center(child: buildProgress(singleActivity)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              singleActivity.activity,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
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
            children: categories.map((singleActivity) => activityTemplate(singleActivity)).toList(),
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
      color: progressIndicatorColor,
      size: 56,
    );
  } else {
    return Text(
      '${(singleActivity.totalActivities)}',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: progressIndicatorColor,
        fontSize: 30,
      ),
    );
  }
}
