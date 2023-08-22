import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexScreen extends StatelessWidget {
  static const routeName = 'provider_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: PokedexContainer(
        pokemons: [],
        scrollListener: (s1, s2) {},
        searchListener: (_) {},
        namedCellBuilder: ({required String name}) {
          return Container();
        },
      ),
    );
  }
}
