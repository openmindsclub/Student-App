
import 'package:hive/hive.dart';

part 'activity.g.dart';

@HiveType(typeId : 2)
class Activity extends HiveObject{
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