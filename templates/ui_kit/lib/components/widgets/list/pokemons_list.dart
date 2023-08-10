import 'package:flutter/material.dart';
import 'package:ui_kit/domain/domain.dart';

class PokemonsList extends StatelessWidget {
  final List<PokemonBaseViewModel> pokemons;
  final Widget Function({required String name}) namedCellBuilder;

  const PokemonsList({
    required this.pokemons,
    required this.namedCellBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return namedCellBuilder(name: pokemons[index].name);
      },
      itemCount: pokemons.length,
    );
  }
}
