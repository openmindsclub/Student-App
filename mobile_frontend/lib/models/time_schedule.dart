
class TimeTable{

}

class Session{
  int numSeanceDay, group;
  String module, seanceType, classroom;
  bool bySection;
  String timeStart, timeEnd;

  Session(this.numSeanceDay, this.group, this.module, this.seanceType,
      this.classroom, this.bySection, this.timeStart, this.timeEnd);

  String timeLaps(){
    return timeStart + " - " + timeEnd;
  }
}

class ModifiedSession extends Session{
  String newTimeStart;
  String newTimeEnd;

  ModifiedSession(this.newTimeStart, this.newTimeEnd, numSeanceDay, group, module, seanceType,
      classroom, bySection, timeStart, timeEnd) : super(numSeanceDay, group, module, seanceType, classroom, bySection, timeStart, timeEnd);
}