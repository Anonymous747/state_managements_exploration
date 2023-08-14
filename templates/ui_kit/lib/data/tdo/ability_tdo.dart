import 'package:hive/hive.dart';
import 'package:ui_kit/domain/domain.dart';

part 'ability_tdo.g.dart';

@HiveType(typeId: 2)
class AbilityTdo {
  AbilityTdo({
    required this.name,
    required this.url,
  });

  @HiveField(0)
  String? name;

  @HiveField(1)
  String? url;
}

extension ToModelAbilitiesExtension on List<AbilityTdo>? {
  List<Ability> toModel() =>
      this
          ?.map((ability) => Ability(
                name: ability.name,
                url: ability.url,
              ))
          .toList() ??
      [];
}

extension ToModelAbilityExtension on AbilityTdo? {
  Ability toModel() => Ability(
        name: this?.name,
        url: this?.url,
      );
}
