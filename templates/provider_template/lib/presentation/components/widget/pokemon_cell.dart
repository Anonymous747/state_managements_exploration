import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:provider_template/presentation/presentation.dart';

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
  late PokemonCellProvider _cellProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!mounted) return;

    _cellProvider = context.read<PokemonCellProvider>();
    _cellProvider.loadPokemon(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PokemonCellProvider>(builder: (context, pokemonCellRef, _) {
      final pokemon = pokemonCellRef.state.viewModel;

      return PokemonCellContainer(
        pokemon: pokemon,
        margin: const EdgeInsets.all(12),
      );
    });
  }
}
