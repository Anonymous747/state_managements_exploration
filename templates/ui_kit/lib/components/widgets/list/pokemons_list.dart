import 'package:flutter/material.dart';
import 'package:ui_kit/components/components.dart';
import 'package:ui_kit/domain/domain.dart';

class PokemonsList extends StatelessWidget {
  final List<PokemonViewModel> pokemons;

  const PokemonsList({
    required this.pokemons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return PokemonCell(
          pokemon: pokemons[index],
          margin: const EdgeInsets.all(12),
        );
      },
      itemCount: pokemons.length,
    );
  }
}
