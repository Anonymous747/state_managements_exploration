import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexScreen extends StatelessWidget {
  static const route_name = 'pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokedexContainer(
      title: 'Bloc Implementation',
      pokemons: PokemonsListViewModel(pokemons: []),
      onBack: () {},
    );
  }
}
