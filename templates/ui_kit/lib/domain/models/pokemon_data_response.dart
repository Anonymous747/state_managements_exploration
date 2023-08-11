import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'pokemon_data_response.g.dart';
part 'pokemon_data_response.freezed.dart';

@freezed
class PokemonDataResponse with _$PokemonDataResponse {
  const factory PokemonDataResponse({
    PokemonSprites? sprites,
    List<Abilities>? abilities,
    List<Stats>? stats,
    List<Types>? types,
    int? id,
    int? order,
    int? height,
    int? weight,
    String? name,
    @JsonKey(name: 'base_experience') int? baseExperience,
    @JsonKey(name: 'is_default') bool? isDefault,
  }) = _PokemonDataResponse;

  factory PokemonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataResponseFromJson(json);
}
