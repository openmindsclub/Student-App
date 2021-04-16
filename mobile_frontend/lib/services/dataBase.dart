import 'package:sqflite/sqflite.dart';

class DataBase{

  static Future getDB() async{
    var db = await openDatabase('test_localdb.db');
    print(db);
    return db;
  }

  static Future closeDB(var db) async{
    await db.close();
  }
}