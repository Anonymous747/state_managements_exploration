import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'pokemon_response.g.dart';
part 'pokemon_response.freezed.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    @Default(0) int count,
    String? next,
    String? previous,
    List<PokemonPreview>? results,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}
