// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notif.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotifAdapter extends TypeAdapter<Notif> {
  @override
  final int typeId = 6;

  @override
  Notif read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Notif(
      title: fields[0] as String,
      content: fields[1] as String,
      date_notification: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Notif obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.date_notification);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotifAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
