import 'package:sqflite/sqflite.dart'; // sqflite related, just keeping it until we completely switch to hive
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class DataBase{

  static Future getDB() async{
    // sqflite related, just keeping it until we completely switch to hive
    var db = await openDatabase('test_localdb.db');
    print(db);
    return db;
  }

  static Future closeDB(var db) async{
    // sqflite related, just keeping it until we completely switch to hive
    await db.close();
  }

  static Future initHiveDB() async{
    final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
  }
}