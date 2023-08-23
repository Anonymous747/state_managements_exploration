import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:provider_template/presentation/presentation.dart';

class PokedexScreen extends StatelessWidget {
  static const routeName = 'provider_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PokedexProvider>(
      create: (_) => instanceOf<PokedexProvider>(),
      child: Scaffold(
        backgroundColor: Palette.blue300,
        body: Consumer<PokedexProvider>(builder: (context, pokedexRef, _) {
          final state = pokedexRef.state;
          final isSearching = state.suitableForSearch.isNotEmpty;
          final pokemons =
              isSearching ? state.suitableForSearch : state.viewModels;

          return PokedexContainer(
            pokemons: pokemons,
            scrollListener: pokedexRef.paginationHandling,
            searchListener: pokedexRef.searchHandling,
            namedCellBuilder: ({required String name}) {
              return ChangeNotifierProvider<PokemonCellProvider>(
                create: (_) => instanceOf<PokemonCellProvider>(),
                child: PokemonCell(
                  // key: ValueKey<String>(name),
                  name: name,
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
