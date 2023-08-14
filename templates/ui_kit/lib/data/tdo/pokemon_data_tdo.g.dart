// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data_tdo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDataTdoAdapter extends TypeAdapter<PokemonDataTdo> {
  @override
  final int typeId = 0;

  @override
  PokemonDataTdo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDataTdo(
      name: fields[0] as String,
      imageUrl: fields[1] as String,
      abilities:
          fields[3] == null ? [] : (fields[3] as List).cast<AbilityTdo?>(),
      id: fields[2] as int?,
      stats: fields[4] == null ? [] : (fields[4] as List?)?.cast<StatsTdo>(),
      color: (fields[5] as List?)?.cast<StatsTdo>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDataTdo obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.abilities)
      ..writeByte(4)
      ..write(obj.stats)
      ..writeByte(5)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDataTdoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
