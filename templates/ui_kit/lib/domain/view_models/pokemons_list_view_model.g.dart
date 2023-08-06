// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_list_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonsListViewModel _$$_PokemonsListViewModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonsListViewModel(
      pokemons: (json['pokemons'] as List<dynamic>?)
          ?.map((e) => PokemonViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonsListViewModelToJson(
        _$_PokemonsListViewModel instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons,
    };
