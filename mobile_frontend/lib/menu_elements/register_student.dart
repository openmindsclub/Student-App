import 'package:flutter/material.dart';
import 'package:mobile_frontend/main_drawer.dart';

class RegisterStudent extends StatefulWidget {
  @override
  _RegisterStudentState createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Container(
            padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
            child: Text(
              'Inscription Etudiant',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          backgroundColor: Color(0xff43B485),
          elevation: 0.0,
        ),
      ),
      body: Container(
        color: Color(0xff43B485),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Matricule",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white, width: 0.0),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Année",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: DropDownList(
                            comboList : <String>['L1', 'L2', 'L3', 'M1', 'M2'],
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Faculté",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: DropDownList(
                            comboList : <String>['Faculté de Chimie', 'Faculté de Physique', 'Faculté de Math', 'Departement d\'informatique'],
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Spécialité",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: DropDownList(
                            comboList : <String>['Etudiant', 'Enseignant'],
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Section",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: DropDownList(
                            comboList : <String>['Etudiant', 'Enseignant'],
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Groupe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white, width: 0.0),
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: Text(
                      "Suivant",
                      style: TextStyle(
                        color: Color(0xff43B485),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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