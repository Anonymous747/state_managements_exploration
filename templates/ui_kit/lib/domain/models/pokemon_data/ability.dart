import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/data/data.dart';

part 'ability.g.dart';
part 'ability.freezed.dart';

@freezed
class Ability with _$Ability {
  const factory Ability({
    String? name,
    String? url,
  }) = _Ability;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

extension TdoAbilitiesExtension on List<Ability>? {
  List<AbilityTdo>? toTdo() => this
      ?.map(
        (ability) => AbilityTdo(
          name: ability.name,
          url: ability.url,
        ),
      )
      .toList();
}

extension TdoAbilityExtension on Ability? {
  AbilityTdo? toTdo() => AbilityTdo(
        name: this?.name,
        url: this?.url,
      );
}
