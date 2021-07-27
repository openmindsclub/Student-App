
import 'package:hive/hive.dart';

@HiveType(typeId : 6)
class Notification{
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  DateTime date_notification;

  Notification({this.title, this.content, this.date_notification});

  String date_string(){
    return "${date_notification.year.toString()}-${date_notification.month.toString().padLeft(2,'0')}-${date_notification.day.toString().padLeft(2,'0')} ${date_notification.hour.toString()}-${date_notification.minute.toString()}";
  }

}