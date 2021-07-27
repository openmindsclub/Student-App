class Category{
  String category;
  int totalActivities;
  int done;

  Category({this.category, this.totalActivities, this.done});

  bool isDone(){
    return totalActivities == done;
  }
}