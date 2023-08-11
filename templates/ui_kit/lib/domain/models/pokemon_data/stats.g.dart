// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : Ability.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };
