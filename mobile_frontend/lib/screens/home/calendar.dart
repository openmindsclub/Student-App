import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_frontend/screens/home/navigation_drawer.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calendar',
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
      body: TableCalendar(
        calendarController: _controller,
        calendarStyle: CalendarStyle(
          weekendStyle: TextStyle(color: Colors.black),
          todayColor: Color(0xff43B485),
          selectedColor: Color(0xff007E53),
          todayStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
        ),
        headerStyle: HeaderStyle(
          leftChevronIcon: Icon(Icons.arrow_back_ios, color: Color(0xff43B485)),
          rightChevronIcon: Icon(Icons.arrow_forward_ios, color: Color(0xff43B485)),
          titleTextStyle: TextStyle(color: Color(0xff43B485), fontSize: 20),
          formatButtonVisible: false,
        ),
        startingDayOfWeek: StartingDayOfWeek.sunday,
        weekendDays: [DateTime.friday],
      ),
    );
  }
}