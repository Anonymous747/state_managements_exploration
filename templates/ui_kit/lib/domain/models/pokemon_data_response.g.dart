// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDataResponse _$$_PokemonDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDataResponse(
      name: json['name'] as String,
      order: json['order'] as int,
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PokemonDataResponseToJson(
        _$_PokemonDataResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'order': instance.order,
      'sprites': instance.sprites,
    };
