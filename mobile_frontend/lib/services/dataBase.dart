import 'dart:io';

import 'package:sqflite/sqflite.dart'; // sqflite related, just keeping it until we completely switch to hive
import 'package:hive/hive.dart';

import 'package:mobile_frontend/models/activity.dart';
import 'package:mobile_frontend/models/notif.dart';
import 'package:mobile_frontend/models/tasks.dart';
import 'package:mobile_frontend/models/time_schedule.dart';
import 'package:mobile_frontend/models/user.dart';

class DataBase{

  static bool initialized = false;

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

  static Future initHiveDB(Directory appDocumentDirectory) async{
    if (!DataBase.initialized){
      Hive.init(appDocumentDirectory.path);
      Hive.registerAdapter(UserAdapter());
      Hive.registerAdapter(ActivityAdapter());
      Hive.registerAdapter(TaskAdapter());
      Hive.registerAdapter(SessionAdapter());
      Hive.registerAdapter(ModifiedSessionAdapter());
      Hive.registerAdapter(NotifAdapter());
      DataBase.initialized = true;
    }
  }
}