class Activity{
  String activity;
  int totalActivities;
  int done;

  Activity({this.activity, this.totalActivities, this.done});

  bool isDone(){
    return totalActivities == done;
  }
}