import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:riverpod_template/data/data.dart';

part 'pokemon_service_part.g.dart';

@riverpod
PokemonService pokemonService(PokemonServiceRef ref) {
  final repository = ref.watch(pokemonRepositoryProvider);

  return MainPokemonService(repository);
}
