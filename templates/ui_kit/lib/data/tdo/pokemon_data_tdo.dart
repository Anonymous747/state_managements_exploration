import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';
import 'package:ui_kit/presentation/presentation.dart';

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

  @HiveField(3)
  List<AbilityTdo>? abilities;

  @HiveField(4)
  List<StatsTdo>? stats;

  @HiveField(5)
  String? color;
}

extension TdoPokemonDataExtension on PokemonDataTdo {
  PokemonViewModel toViewModel() {
    return PokemonViewModel(
      name: name,
      imageUrl: imageUrl,
      color: color,
      id: id,
      stats: stats.toModel(),
      abilities: abilities.toModel(),
    );
  }
}
