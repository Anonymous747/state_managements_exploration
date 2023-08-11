import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'abilities.g.dart';
part 'abilities.freezed.dart';

@freezed
class Abilities with _$Abilities {
  const factory Abilities({
    Ability? ability,
    int? slot,
    @JsonKey(name: 'is_hidden') bool? isHidden,
  }) = _Abilities;

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);
}
