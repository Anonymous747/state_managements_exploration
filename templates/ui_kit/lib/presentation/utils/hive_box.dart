import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';

abstract class HiveBox {
  static const pokemonBox = 'PokemonBox';

  static List<String> get boxes => [
        pokemonBox,
      ];

  static Future<void> openAll() async =>
      [for (final box in boxes) await Hive.openBox(box)];

  static Future<void> registerAdapters() async {
    Hive.registerAdapter(PokemonDataTdoAdapter(), override: true);
    Hive.registerAdapter(StatsTdoAdapter(), override: true);
    Hive.registerAdapter(AbilityTdoAdapter(), override: true);
  }
}
