// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_schedule.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SessionAdapter extends TypeAdapter<Session> {
  @override
  final int typeId = 4;

  @override
  Session read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Session(
      fields[6] as int,
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as bool,
      fields[4] as String,
      fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Session obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.module)
      ..writeByte(1)
      ..write(obj.seanceType)
      ..writeByte(2)
      ..write(obj.classroom)
      ..writeByte(3)
      ..write(obj.bySection)
      ..writeByte(4)
      ..write(obj.timeStart)
      ..writeByte(5)
      ..write(obj.timeEnd)
      ..writeByte(6)
      ..write(obj.group);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ModifiedSessionAdapter extends TypeAdapter<ModifiedSession> {
  @override
  final int typeId = 5;

  @override
  ModifiedSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModifiedSession(
      fields[7] as String,
      fields[8] as String,
      fields[6] as dynamic,
      fields[0] as dynamic,
      fields[1] as dynamic,
      fields[2] as dynamic,
      fields[3] as dynamic,
      fields[4] as dynamic,
      fields[5] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, ModifiedSession obj) {
    writer
      ..writeByte(9)
      ..writeByte(7)
      ..write(obj.newTimeStart)
      ..writeByte(8)
      ..write(obj.newTimeEnd)
      ..writeByte(0)
      ..write(obj.module)
      ..writeByte(1)
      ..write(obj.seanceType)
      ..writeByte(2)
      ..write(obj.classroom)
      ..writeByte(3)
      ..write(obj.bySection)
      ..writeByte(4)
      ..write(obj.timeStart)
      ..writeByte(5)
      ..write(obj.timeEnd)
      ..writeByte(6)
      ..write(obj.group);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModifiedSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
