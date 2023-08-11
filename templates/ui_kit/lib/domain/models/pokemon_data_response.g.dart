// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDataResponse _$$_PokemonDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDataResponse(
      sprites: json['sprites'] == null
          ? null
          : Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      order: json['order'] as int?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      name: json['name'] as String?,
      baseExperience: json['base_experience'] as int?,
      isDefault: json['is_default'] as bool?,
    );

Map<String, dynamic> _$$_PokemonDataResponseToJson(
        _$_PokemonDataResponse instance) =>
    <String, dynamic>{
      'sprites': instance.sprites,
      'abilities': instance.abilities,
      'stats': instance.stats,
      'types': instance.types,
      'id': instance.id,
      'order': instance.order,
      'height': instance.height,
      'weight': instance.weight,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'is_default': instance.isDefault,
    };
