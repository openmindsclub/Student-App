
import 'package:hive/hive.dart';

part 'tasks.g.dart';

@HiveType(typeId : 3)
class Task extends HiveObject{
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  DateTime date;

  Task({this.title, this.description, this.date});

  String date_string(){
    return "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')} ${date.hour.toString()}-${date.minute.toString()}";
  }

}