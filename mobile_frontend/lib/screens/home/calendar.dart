import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:mobile_frontend/shared/app_bar.dart';
import 'package:mobile_frontend/shared/constants.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(pageTitle:'Calendar'),
      drawer: NavigationDrawer(),
      body: TableCalendar(
        calendarController: _controller,
        calendarStyle: CalendarStyle(
          weekendStyle: TextStyle(color: Colors.black),
          todayColor: mainAppColor1,
          selectedColor: calendarSelectedDayColor,
          todayStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
        ),
        headerStyle: HeaderStyle(
          leftChevronIcon: Icon(Icons.arrow_back_ios, color: mainAppColor1),
          rightChevronIcon: Icon(Icons.arrow_forward_ios, color: mainAppColor1),
          titleTextStyle: TextStyle(color: mainAppColor1, fontSize: 20),
          formatButtonVisible: false,
        ),
        startingDayOfWeek: StartingDayOfWeek.sunday,
        weekendDays: [DateTime.friday],
      ),
    );
  }
}