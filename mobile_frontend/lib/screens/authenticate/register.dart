import 'package:flutter/material.dart';

import 'package:mobile_frontend/screens/authenticate/register_student.dart';
import 'package:mobile_frontend/screens/authenticate/registration_informations.dart';

import 'package:mobile_frontend/shared/field_widgets.dart';

import 'package:mobile_frontend/models/User.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _emailAdress = GlobalKey<FormFieldState<String>>();
  final _password = GlobalKey<FormFieldState<String>>();
  final _lastName = GlobalKey<FormFieldState<String>>();
  final _firstName = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Container(
            padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
            child: Text(
              'Inscription',
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
                      "Nom",
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
                        key: _lastName,
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
                        "Prénom",
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
                          key: _firstName,
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
                        "Email",
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
                          key: _emailAdress,
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
                        "Mot de passe",
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
                          key: _password,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
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
                        "Statut",
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
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      bool myemail = User.checkEmail(_emailAdress.currentState.value);
                      bool myfirstname = User.checkName(_firstName.currentState.value);
                      bool mylastname = User.checkName(_lastName.currentState.value);
                      if (!myemail){
                        print('this is not an email');
                        return;
                      }
                      if (!myfirstname){
                        print('this is not an name');
                        return;
                      }
                      if (!mylastname){
                        print('this is not an name');
                        return;
                      }
                      if (_password.currentState.value.isEmpty){
                        print('this is not a password');
                        return;
                      }
                      RegistrationInformation userInfos = RegistrationInformation.registerInfos(_emailAdress.currentState.value, _password.currentState.value, _lastName.currentState.value, _firstName.currentState.value);
                      print(userInfos.firstName + " " + userInfos.lastName + " " + userInfos.email + " " + userInfos.password);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterStudent(userInfos : userInfos)));
                    },
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