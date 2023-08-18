import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:riverpod_template/data/data.dart';

part 'pokemon_repository_part.g.dart';

@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  final dio = ref.watch(httpClientProvider);

  return MainPokemonRepository(dio);
}
