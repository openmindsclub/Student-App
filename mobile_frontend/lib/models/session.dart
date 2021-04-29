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

  String sessionInfos(){
    if (bySection){
      return seanceType;
    } else {
      return "Groupe $group, $seanceType";
    }

  }
}