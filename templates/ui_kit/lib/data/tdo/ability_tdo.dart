import 'package:hive/hive.dart';

part 'ability_tdo.g.dart';

@HiveType(typeId: 1)
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
