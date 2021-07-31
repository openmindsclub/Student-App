import 'package:flutter/material.dart';

import 'package:mobile_frontend/shared/constants.dart';

class SharedAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override

  String? pageTitle;

  SharedAppBar({Key? key, this.pageTitle}) : super(key: key);

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
        widget.pageTitle!,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),
      ),
      backgroundColor: mainAppColor1,
      elevation: 0.0,
    );
  }
}
