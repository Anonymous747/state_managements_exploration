import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexScreen extends StatelessWidget {
  static const String route_name = 'riverpod_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: PokedexContainer(
        pokemons: [],
        namedCellBuilder: ({required String name}) {
          return Container();
        },
        scrollListener: (_, __) {},
        searchListener: (_) {},
      ),
    );
  }
}
