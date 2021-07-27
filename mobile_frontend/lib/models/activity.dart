
import 'package:hive/hive.dart';

@HiveType(typeId : 2)
class Activity{
  @HiveField(0)
  String type;
  @HiveField(1)
  DateTime date;
  @HiveField(2)
  String time;
  @HiveField(3)
  String module;

  Activity({this.type, this.date, this.time, this.module});
}