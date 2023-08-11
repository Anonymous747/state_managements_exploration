// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Types _$$_TypesFromJson(Map<String, dynamic> json) => _$_Types(
      slot: json['slot'] as int,
      type: json['type'] == null
          ? null
          : Ability.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypesToJson(_$_Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
