// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abilities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Abilities _$$_AbilitiesFromJson(Map<String, dynamic> json) => _$_Abilities(
      ability: json['ability'] == null
          ? null
          : Ability.fromJson(json['ability'] as Map<String, dynamic>),
      slot: json['slot'] as int?,
      isHidden: json['is_hidden'] as bool?,
    );

Map<String, dynamic> _$$_AbilitiesToJson(_$_Abilities instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'slot': instance.slot,
      'is_hidden': instance.isHidden,
    };
