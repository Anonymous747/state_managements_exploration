import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:riverpod_template/presentation/presentation.dart';

class PokedexScreen extends HookConsumerWidget {
  static const String routeName = 'riverpod_pokedex';

  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokedexControllerProvider);

    return Scaffold(
      backgroundColor: Palette.blue300,
      body: Builder(builder: (context) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final scrollListener =
            ref.read(pokedexControllerProvider.notifier).paginationHandling;
        final searchHandler =
            ref.read(pokedexControllerProvider.notifier).searchHandling;

        final isSearching = state.suitableForSearch.isNotEmpty;
        final pokemons =
            isSearching ? state.suitableForSearch : state.viewModels;

        return PokedexContainer(
          pokemons: pokemons,
          scrollListener: scrollListener,
          searchListener: searchHandler,
          namedCellBuilder: ({required String name}) {
            return PokemonCell(name: name);
          },
        );
      }),
    );
  }
}
