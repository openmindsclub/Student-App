
import 'package:hive/hive.dart';

part 'time_schedule.g.dart';

class TimeTable{

}

@HiveType(typeId : 4)
class Session extends HiveObject{
  @HiveField(0)
  String? module;
  @HiveField(1)
  String? seanceType;
  @HiveField(2)
  String? classroom;
  @HiveField(3)
  bool? bySection;
  @HiveField(4)
  String? timeStart;
  @HiveField(5)
  String? timeEnd;
  @HiveField(6)
  int? group;

  int? numSeanceDay;

  Session.withSecance(this.numSeanceDay, this.group, this.module, this.seanceType,
      this.classroom, this.bySection, this.timeStart, this.timeEnd);

  Session(this.group, this.module, this.seanceType,
      this.classroom, this.bySection, this.timeStart, this.timeEnd);

  String timeLaps(){
    return timeStart! + " - " + timeEnd!;
  }
}

@HiveType(typeId : 5)
class ModifiedSession extends Session{
  @HiveField(7)
  String? newTimeStart;
  @HiveField(8)
  String? newTimeEnd;

  ModifiedSession.withSecance(this.newTimeStart, this.newTimeEnd, numSeanceDay, group, module, seanceType,
      classroom, bySection, timeStart, timeEnd) : super.withSecance(numSeanceDay, group, module, seanceType, classroom, bySection, timeStart, timeEnd);

  ModifiedSession(this.newTimeStart, this.newTimeEnd, group, module, seanceType,
      classroom, bySection, timeStart, timeEnd) : super(group, module, seanceType, classroom, bySection, timeStart, timeEnd);
}