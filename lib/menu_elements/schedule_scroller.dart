import 'package:flutter/material.dart';
import 'package:usthb_app/dart_src/tasks.dart';


class ScheduleScroller extends StatefulWidget {
  @override
  _ScheduleScrollerState createState() => _ScheduleScrollerState();
}

class _ScheduleScrollerState extends State<ScheduleScroller> {

  List<Task> tasks = [
    Task(
        title: 'Tasks',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
    Task(
        title: 'Notifications',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
    Task(
        title: 'Tasks',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
    Task(
        title: 'Notifications',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
    Task(
        title: 'Tasks',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
    Task(
        title: 'Notifications',
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
        date: DateTime.parse("1969-07-20 20:18:04Z")),
  ];

  Widget taskTemplate(task) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right:12.0),
              height: 80,
              width: 5,
              color: Color(0xff43B485),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 15,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(left:5.0),
                        child: Text(
                          task.title,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    task.date_string(),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff7D7A78),
                    ),
                  ),
                  Text(
                    task.description,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff7D7A78),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: tasks.map((quote) => taskTemplate(quote)).toList(),
    );
  }
}
