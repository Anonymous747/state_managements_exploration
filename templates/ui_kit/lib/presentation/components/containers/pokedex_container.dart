import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

const _searchHint = 'Search...';

class PokedexContainer extends StatelessWidget {
  final List<PokemonBaseViewModel> pokemons;
  final Widget Function({required String name}) namedCellBuilder;
  final ScrollController scrollController;
  final TextEditingController searchController;
  final WidgetBuilder? loadMoreBuilder;

  const PokedexContainer({
    required this.pokemons,
    required this.namedCellBuilder,
    required this.scrollController,
    required this.searchController,
    this.loadMoreBuilder,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: PokemonTextField(
                controller: searchController,
                hint: _searchHint,
                borderRadius: 24,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: PokemonsList(
                  pokemons: pokemons,
                  namedCellBuilder: namedCellBuilder,
                  controller: scrollController,
                ),
              ),
            ),
            if (loadMoreBuilder != null)
              loadMoreBuilder!(context)
            else
              Container(height: 40),
          ],
        ),
      ],
    );
  }
}
