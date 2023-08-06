import 'package:flutter/material.dart';
import 'package:ui_kit/components/components.dart';

class PokemonsList extends StatelessWidget {
  final List<String> pokemons;

  const PokemonsList({
    required this.pokemons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return PokemonCell();
      },
      itemCount: pokemons.length,
    );
  }
}
