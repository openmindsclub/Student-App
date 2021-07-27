import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:sqflite/sqflite.dart';

import 'package:mobile_frontend/services/rest_api.dart';
import 'package:mobile_frontend/services/dataBase.dart';

import 'enumeration.dart';

@HiveType(typeId : 1)
class User {
  @HiveField(0)
  String id;
  @HiveField(1)
  String email;
  @HiveField(2)
  String lastName;
  @HiveField(3)
  String firstName;
  @HiveField(4)
  String studentID; // matricule

  @HiveField(5)
  bool activeSession = false;

  // user constructor
  User(this.id, this.email);

  void makeSessionActive(){
    activeSession = true;
    // update active session in the database
  }

  void makeSessionInactive(){
    // we call this function after the user disconnect or after the tokken is dead
    activeSession = false;
    // update active session in the database
  }

  void storeToken(String token) async{
    final storage = new FlutterSecureStorage();
    await storage.write(key: id, value: token);
  }

  void storeUserLocalDB() async {
    var db = await DataBase.getDB();
    await db.execute("DROP TABLE IF EXISTS UserPrincipal;");
    await db.execute("CREATE TABLE UserPrincipal (id TEXT PRIMARY KEY, email TEXT UNIQUE, sessionActive INTEGER);");
    int value = await db.insert('USERPRINCIPAL', {
      'id': id,
      'email': email,
      'sessionActive': activeSession ? 1 : 0
    });
    await DataBase.closeDB(db);
  }

  static Future<User> getUser() async {
    // this function is a test for now it will be rewritten later when the database schema and models are finished,
    List<Map> info;
    var db = await DataBase.getDB();

    try{
      info = await db.query("USERPRINCIPAL",
          columns: ['id', 'email', 'sessionActive']);
      // the table is supposed to have one or 0 users so we take the first one
    } on DatabaseException catch (e) {
      print(e);
      return null;
    }


    if (info.isEmpty){
      return null;
    }

    User user = User(info[0]["id"], info[0]["email"]);
    user.activeSession = info[0]["sessionActive"] == 1;
    await DataBase.closeDB(db);
    return user;
  }

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

          user.storeToken(response.data["token"]);
          user.makeSessionActive();

          // load user data from the server (we'll do this part later)

          // store the user in the local data base as a the principal user
          user.storeUserLocalDB();

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