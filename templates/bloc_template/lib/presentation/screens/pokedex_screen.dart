import 'package:bloc_template/bloc_template.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokedexScreen extends StatelessWidget {
  static const routeName = 'bloc_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = instanceOf<PokedexCubit>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Palette.blue300,
      body: BlocProvider<PokedexCubit>(
        create: (context) => cubit,
        child: BlocProvider<PokemonCellCubit>(
          create: (_) => instanceOf<PokemonCellCubit>(),
          child: BlocBuilder<PokedexCubit, PokedexState>(
            builder: (context, state) {
              return state.map(
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                error: (errorState) => Center(
                  child: Text(errorState.message),
                ),
                loaded: (loadedState) {
                  final isSearching = loadedState.suitableForSearch.isNotEmpty;
                  final pokemons = isSearching
                      ? loadedState.suitableForSearch
                      : loadedState.viewModels;

                  return PokedexContainer(
                    pokemons: pokemons,
                    scrollListener: cubit.paginationHandling,
                    searchListener: cubit.searchHandling,
                    namedCellBuilder: ({required String name}) {
                      return PokemonCell(
                        key: ValueKey<String>(name),
                        navigateToStats: navigateToStats,
                        name: name,
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// In the version I like, this method should be placed
  /// inside a bloc. This can be achieved with a global
  /// navigation key, however can't be shown elegantly
  /// in a multi-model system like this.
  ///
  void navigateToStats(BuildContext context, PokemonViewModel viewModel) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PokemonStatsScreen(viewModel: viewModel),
        ));
  }
}
