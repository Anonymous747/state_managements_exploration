// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonsResponse _$$_PokemonsResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonsResponse(
      count: json['count'] as int? ?? 0,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PokemonPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonsResponseToJson(_$_PokemonsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
