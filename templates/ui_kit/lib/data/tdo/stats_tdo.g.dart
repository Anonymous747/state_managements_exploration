// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_tdo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatsTdoAdapter extends TypeAdapter<StatsTdo> {
  @override
  final int typeId = 1;

  @override
  StatsTdo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StatsTdo(
      effort: fields[0] as int?,
      stat: fields[2] as AbilityTdo?,
      baseStat: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, StatsTdo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.effort)
      ..writeByte(1)
      ..write(obj.baseStat)
      ..writeByte(2)
      ..write(obj.stat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsTdoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
