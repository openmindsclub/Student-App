class Task{
  String title;
  String description;
  DateTime date;

  Task({this.title, this.description, this.date});

  String date_string(){
    return "${date.year.toString()}-${date.month.toString().padLeft(2,'0')}-${date.day.toString().padLeft(2,'0')} ${date.hour.toString()}-${date.minute.toString()}";
  }

}