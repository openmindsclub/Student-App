import 'package:flutter/material.dart';

class SharedAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override

  String PageTitle;

  SharedAppBar({Key key, this.PageTitle}) : super(key: key);

  _SharedAppBarState createState() => _SharedAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}

class _SharedAppBarState extends State<SharedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.PageTitle,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
      backgroundColor: Color(0xff43B485),
      elevation: 0.0,
    );
  }
}
