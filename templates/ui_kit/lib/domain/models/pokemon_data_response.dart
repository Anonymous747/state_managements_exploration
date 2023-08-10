import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'pokemon_data_response.g.dart';
part 'pokemon_data_response.freezed.dart';

@freezed
class PokemonDataResponse with _$PokemonDataResponse {
  const factory PokemonDataResponse({
    required String name,
    required int order,
    required PokemonSprites sprites,
  }) = _PokemonDataResponse;

  factory PokemonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataResponseFromJson(json);
}
