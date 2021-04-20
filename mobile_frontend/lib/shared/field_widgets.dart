import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {
  List<String> comboList;


  DropDownList({Key key, this.comboList}) : super(key: key);

  @override
  _DropDownList createState() => _DropDownList();
}

class _DropDownList extends State<DropDownList> {

  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: DropdownButtonHideUnderline (
            child: DropdownButton<String>(
              onTap: (){
                FocusManager.instance.primaryFocus.unfocus();
              },
              value : dropdownValue,
              icon: Icon(Icons.keyboard_arrow_down),
              iconSize: 40,
              iconEnabledColor: Color(0xff43B485),
              elevation: 16,
              isExpanded: true,
              style: TextStyle(color: Colors.black),
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: widget.comboList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}