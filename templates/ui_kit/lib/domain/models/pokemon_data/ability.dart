import 'package:freezed_annotation/freezed_annotation.dart';

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
