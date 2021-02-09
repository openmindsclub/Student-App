import 'enumeration.dart';

class User {
  String email, lastName, firstName;
  String id; // matricule
  String password;

  Faculty faculty;
  StudyYear studyYear;
  String speciality, section, group;

  User.registerConstructor(this.email, this.password, this.lastName, this.firstName, this.id,
      this.faculty, this.studyYear, this.speciality, this.section, this.group);

  User.loginConstructor(this.email, this.password);
}