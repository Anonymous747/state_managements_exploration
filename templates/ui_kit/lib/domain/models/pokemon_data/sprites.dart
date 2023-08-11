import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites.g.dart';
part 'sprites.freezed.dart';

@freezed
class Sprites with _$Sprites {
  const factory Sprites({
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'back_female') String? backFemale,
    @JsonKey(name: 'back_shiny') String? backShiny,
    @JsonKey(name: 'back_shiny_female') String? backShinyFemale,
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'front_female') String? frontFemale,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'front_shiny_female') String? frontShinyFemale,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}
