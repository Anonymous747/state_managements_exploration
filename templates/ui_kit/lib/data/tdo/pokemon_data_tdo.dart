import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';

part 'pokemon_data_tdo.g.dart';

@HiveType(typeId: 0)
class PokemonDataTdo {
  PokemonDataTdo({
    required this.name,
    required this.imageUrl,
    this.abilities = const [],
    this.stats,
    this.color,
    this.id,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String imageUrl;

  @HiveField(2)
  int? id;

  @HiveField(3, defaultValue: [])
  List<AbilityTdo?> abilities;

  @HiveField(4, defaultValue: [])
  List<StatsTdo>? stats;

  @HiveField(5)
  List<StatsTdo>? color;
}
