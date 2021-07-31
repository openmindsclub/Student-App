
import 'package:hive/hive.dart';

part 'notif.g.dart';

@HiveType(typeId : 6)
class Notif extends HiveObject{
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  DateTime date_notification;

  Notif({this.title, this.content, this.date_notification});

  String date_string(){
    return "${date_notification.year.toString()}-${date_notification.month.toString().padLeft(2,'0')}-${date_notification.day.toString().padLeft(2,'0')} ${date_notification.hour.toString()}-${date_notification.minute.toString()}";
  }

  // add a notification to the local database
  static void addNotification(Notif notif){
    // treat the case where the box is unopened

    // check notifications content

    var box = Hive.box("notifications");
    box.add(notif);
  }

  static List<Notif> getNotifications(){
    // treat the case where the box is unopened
    var box = Hive.box("notifications");
    return box.values;
  }

  static void openHiveBox() async {
    await Hive.openBox("notifications");
  }

  static void closeHiveBox(){
    Hive.box("notifications").close();
  }

  // temporary method until we have get the data from an api
  static void fillHiveDB(){
    List<Notif> notifs = [
      Notif(
          title: 'Acutualite',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Evenement',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Acutualite',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Evenement',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Acutualite',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Evenement',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Acutualite',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
      Notif(
          title: 'Evenement',
          content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In fringilla convallis augue in gravida",
          date_notification: DateTime.parse("1969-07-20 20:18:04Z")),
    ];
    notifs.forEach((notif) {
      Notif.addNotification(notif);
    });
  }
}