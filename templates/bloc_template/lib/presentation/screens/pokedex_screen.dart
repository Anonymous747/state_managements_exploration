import 'package:bloc_template/bloc_template.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PokedexScreen extends StatelessWidget {
  static const route_name = 'pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: BlocProvider<PokedexCubit>(
        create: (context) => instanceOf<PokedexCubit>(),
        child: BlocBuilder<PokedexCubit, PokedexState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              error: (errorState) => Center(
                child: Text(errorState.message),
              ),
              loaded: (loadedState) {
                return PokedexContainer(
                  pokemons: loadedState.viewModels,
                  namedCellBuilder: ({
                    required String name,
                  }) {
                    final cellCubit = instanceOf<PokemonCellCubit>();

                    return BlocProvider<PokemonCellCubit>(
                      create: (_) => cellCubit,
                      child: BlocBuilder<PokemonCellCubit, PokemonCellState>(
                          bloc: cellCubit,
                          builder: (context, state) {
                            cellCubit.loadPokemon(name);

                            return state.map(
                              loading: (_) => const PokemonCell(
                                pokemon: null,
                                margin: EdgeInsets.all(12),
                              ),
                              error: (error) =>
                                  const Center(child: Text("Error")),
                              loaded: (loadedState) {
                                return GestureDetector(
                                  onTap: () => navigateToStats(
                                    context,
                                    loadedState.viewModel,
                                  ),
                                  child: PokemonCell(
                                    pokemon: loadedState.viewModel,
                                    margin: const EdgeInsets.all(12),
                                  ),
                                );
                              },
                            );
                          }),
                    );
                  },
                );
              },
            );
          },
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
