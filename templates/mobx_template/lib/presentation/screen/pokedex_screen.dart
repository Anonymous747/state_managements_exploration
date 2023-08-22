import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:mobx_template/presentation/presentation.dart';

class PokedexScreen extends StatelessWidget {
  static const routeName = 'mobx_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = instanceOf<PokedexStore>();

    return Scaffold(
      backgroundColor: Palette.blue300,
      body: Observer(builder: (context) {
        final isLoading = store.isLoading;

        if (isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final isSearching = store.suitableForSearch.isNotEmpty;
        final viewModels =
            isSearching ? store.suitableForSearch : store.baseViewModels;

        return PokedexContainer(
          pokemons: viewModels,
          scrollListener: store.paginationHandling,
          searchListener: store.searchHandling,
          namedCellBuilder: ({required String name}) {
            return PokemonCell(
              key: ValueKey(name),
              name: name,
            );
          },
        );
      }),
    );
  }
}
