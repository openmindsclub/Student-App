import 'package:dio/dio.dart';

import 'package:mobile_frontend/services/rest_api.dart';

import 'enumeration.dart';

class User {
  String email, lastName, firstName;
  String id;
  String password;

  String studentID; // matricule
  Faculty faculty;
  StudyYear studyYear;
  String speciality, section, group;

  bool activeSession = false;

  // user constructor
  User(this.id, this.email);

  // checking the register infos in the first register screen and transfer them from a screen to another
  User.registerInfos(this.email, this.password, this.lastName, this.firstName);

  static Future login(String email, String password) async {
      // check email format,
      // connect to api for autentication
      Api api = Api();
      print(email + " " + password);

      try{
        var response = await api.login({"email":email,"password":password});

        if (response.statusCode == 200){
          // request worked perfectly
          // create a user
          User user = User(response.data["userId"], email);
          print(response.data);
          // load user data from the server
          // store the token
          // return the user
          return user;
        }
      } on DioError catch (e){
        if(e.response.statusCode == 404){
          print(e.response.statusCode);
        }else if (e.response.statusCode == 401){
          print(e.response.statusCode);
        }
        // we're returning 404 or 401, 404 means the email doesn't exist and 401 the passwords don't match
        // we'll change that later if needed
        return e.response.statusCode;
      }
  }

  // I'll change this to a static method
  static Future register(email, password, lastName, firstName, studentID,
      faculty, studyYear, speciality, section, group) async{
    // check email, id, last name and first name format
    // connect to api to create the user
    Api api = Api();
    var data = {
      "email": email,
      "nom": firstName,
      "prenom": lastName,
      "matricule": studentID,
      "password": password,
      "annee": studyYear,
      "specialite": speciality,
      "faculte": faculty,
      "num": section,
      "num_groupe": group
    };
    return api.register(data);
  }

  static bool checkEmail(String email){
      RegExp emailExp = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
      //used the regex above for email validation based on HTML5 spec
      return emailExp.hasMatch(email);
  }

  static bool checkName(String name){
      RegExp nameExp = new RegExp(r"^[a-zA-Z][a-zA-Z-\s]+$");
      return nameExp.hasMatch(name);
  }

  static bool checkID(String id){
    RegExp idExp = new RegExp(r"^[0-9]{12}$");
    return idExp.hasMatch(id);
  }
}