import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:mobx_template/presentation/presentation.dart';

class PokemonCell extends StatefulWidget {
  final String name;

  const PokemonCell({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  State<PokemonCell> createState() => _PokemonCellState();
}

class _PokemonCellState extends State<PokemonCell> {
  late final PokemonCellStore store;

  @override
  void initState() {
    super.initState();

    store = instanceOf<PokemonCellStore>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    store.loadPokemon(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final viewModel = store.pokemonViewModel;
        final isLoading = store.isLoading;

        return GestureDetector(
          onTap: () => isLoading ? null : navigateToStats(context, viewModel!),
          child: PokemonCellContainer(
            pokemon: viewModel,
            margin: const EdgeInsets.all(12),
          ),
        );
      },
    );
  }

  void navigateToStats(BuildContext context, PokemonViewModel viewModel) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (_) => PokemonStatsContainer(viewModel: viewModel)),
    );
  }
}
