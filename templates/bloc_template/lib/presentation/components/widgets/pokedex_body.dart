import 'package:bloc_template/bloc_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexBody extends StatelessWidget {
  final void Function(BuildContext, PokemonViewModel) navigateToStats;
  final String name;

  const PokedexBody({
    required this.navigateToStats,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cellCubit = instanceOf<PokemonCellCubit>();

    return BlocProvider<PokemonCellCubit>(
      create: (_) => cellCubit,
      child: BlocBuilder<PokemonCellCubit, PokemonCellState>(
          bloc: cellCubit,
          builder: (context, cellState) {
            cellCubit.loadPokemon(name);

            return cellState.map(
              loading: (_) => const PokemonCell(
                pokemon: null,
                margin: EdgeInsets.all(12),
              ),
              error: (error) => const Center(child: Text("Error")),
              loaded: (cellLoadedState) {
                return GestureDetector(
                  onTap: () => navigateToStats(
                    context,
                    cellLoadedState.viewModel,
                  ),
                  child: PokemonCell(
                    pokemon: cellLoadedState.viewModel,
                    margin: const EdgeInsets.all(12),
                  ),
                );
              },
            );
          }),
    );
  }
}
