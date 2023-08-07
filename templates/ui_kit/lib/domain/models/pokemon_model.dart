import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.g.dart';
part 'pokemon_model.freezed.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required String name,
    required String url,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}
