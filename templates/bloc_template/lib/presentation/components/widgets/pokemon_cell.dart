import 'package:bloc_template/bloc_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class PokemonCell extends StatefulWidget {
  final void Function(BuildContext, PokemonViewModel) navigateToStats;
  final String name;

  const PokemonCell({
    required this.navigateToStats,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonCell> createState() => _PokemonCellState();
}

class _PokemonCellState extends State<PokemonCell> {
  late final PokemonCellCubit _cellCubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _cellCubit = instanceOf<PokemonCellCubit>();
    _cellCubit.loadPokemon(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCellCubit, PokemonCellState>(
      bloc: _cellCubit,
      builder: (context, cellState) {
        return cellState.map(
          loading: (_) => const PokemonCellContainer(
            pokemon: null,
            margin: EdgeInsets.all(12),
          ),
          error: (error) => const Center(child: Text("Error")),
          loaded: (cellLoadedState) {
            return GestureDetector(
              onTap: () => widget.navigateToStats(
                context,
                cellLoadedState.viewModel,
              ),
              child: PokemonCellContainer(
                pokemon: cellLoadedState.viewModel,
                margin: const EdgeInsets.all(12),
              ),
            );
          },
        );
      },
    );
  }
}
