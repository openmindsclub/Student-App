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
      var response = await api.login({"email":email,"password":password});

      switch(response.statusCode) {
        case 404: {
          // user not found
          return false;
        }
        break;

        case 401: {
          // incorrect password
          return false;
        }
        break;

        case 200: {
          // request worked perfectly
          // create a user
          User user = User(response.data["userId"], email);
          print(response.data);
          // load user data from the server
          // store the token

          return user;
        }
        break;

        default: {
          // this isn't supposed to happen
          return false;
        }
        break;
      }
  }

  // I'll change this to a static method
  User.registerConstructor(this.email, this.password, this.lastName, this.firstName, this.studentID,
      this.faculty, this.studyYear, this.speciality, this.section, this.group){
    // check email, id, last name and first name format
    // connect to api to create the user
    Api api = Api();
    api.register("test");
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