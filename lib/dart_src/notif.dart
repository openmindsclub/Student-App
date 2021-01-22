class Notification{
  String title;
  String content;
  DateTime date_notification;

  Notification({this.title, this.content, this.date_notification});

  String date_string(){
    return "${date_notification.year.toString()}-${date_notification.month.toString().padLeft(2,'0')}-${date_notification.day.toString().padLeft(2,'0')} ${date_notification.hour.toString()}-${date_notification.minute.toString()}";
  }

}