import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'pokemons_response.g.dart';
part 'pokemons_response.freezed.dart';

@freezed
class PokemonsResponse with _$PokemonsResponse {
  const factory PokemonsResponse({
    @Default(0) int count,
    String? next,
    String? previous,
    List<PokemonPreview>? results,
  }) = _PokemonsResponse;

  factory PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonsResponseFromJson(json);
}
