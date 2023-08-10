import 'package:flutter/material.dart';
import 'package:ui_kit/components/components.dart';
import 'package:ui_kit/domain/domain.dart';

class PokedexContainer extends StatelessWidget {
  final List<PokemonBaseViewModel> pokemons;
  final Widget Function({required String name}) namedCellBuilder;
  final String title;

  const PokedexContainer({
    required this.title,
    required this.pokemons,
    required this.namedCellBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20,
          child: BackButton(onPressed: () => Navigator.pop(context)),
        ),
        Column(
          children: [
            const Center(
              child: PokemonLogo(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PokemonTextField(
                hint: 'Search...',
                borderRadius: 24,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: PokemonsList(
                  pokemons: pokemons,
                  namedCellBuilder: namedCellBuilder,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
