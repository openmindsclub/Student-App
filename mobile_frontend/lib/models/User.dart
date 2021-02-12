import 'enumeration.dart';

class User {
  String email, lastName, firstName;
  String id; // matricule
  String password;

  Faculty faculty;
  StudyYear studyYear;
  String speciality, section, group;

  bool activeSession = false;

  // checking the register infos in the first register screen and transfer them from a screen to another
  User.registerInfos(this.email, this.password, this.lastName, this.firstName);

  User.registerConstructor(this.email, this.password, this.lastName, this.firstName, this.id,
      this.faculty, this.studyYear, this.speciality, this.section, this.group){
      // check email, id, last name and first name format
      // connect to api to create the user
  }

  User.loginConstructor(this.email, this.password){
      // check email format,
      // connect to api for autentication
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