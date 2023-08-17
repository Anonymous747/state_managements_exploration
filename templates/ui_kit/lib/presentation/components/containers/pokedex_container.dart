import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexContainer extends StatefulWidget {
  final List<PokemonBaseViewModel> pokemons;
  final Widget Function({required String name}) namedCellBuilder;
  final void Function(double maxScrollExtent, double pixels) scrollListener;
  final StringBuilder searchListener;

  const PokedexContainer({
    required this.pokemons,
    required this.namedCellBuilder,
    required this.scrollListener,
    required this.searchListener,
    Key? key,
  }) : super(key: key);

  @override
  State<PokedexContainer> createState() => _PokedexContainerState();
}

class _PokedexContainerState extends State<PokedexContainer> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();

  void _scrollListener() {
    final position = _scrollController.position;

    widget.scrollListener(position.maxScrollExtent, position.pixels);
  }

  void _searchListener() {
    final text = _searchController.text;

    widget.searchListener(text);
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_scrollListener);
    _searchController.addListener(_searchListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _searchController.removeListener(_searchListener);

    _scrollController.dispose();
    _searchController.dispose();

    super.dispose();
  }

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
                controller: _searchController,
                hint: Strings.searchHint,
                borderRadius: 24,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: PokemonsList(
                  pokemons: widget.pokemons,
                  namedCellBuilder: widget.namedCellBuilder,
                  controller: _scrollController,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
