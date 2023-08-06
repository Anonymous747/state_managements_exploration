import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/components/widgets/list/pokemons_list.dart';
import 'package:ui_kit/domain/domain.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PokedexContainer extends StatelessWidget {
  final String title;
  final PokemonsListViewModel pokemons;

  const PokedexContainer({
    required this.title,
    required this.pokemons,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      appBar: AppBar(
        title: Text(
          "Bloc Implementation",
          style: TextStyles.regularHugeStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Palette.blue300,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Container(
                      constraints:
                          const BoxConstraints(minWidth: 100, maxWidth: 280),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://clipground.com/images/pokemon-logo-png-5.png",
                        placeholder: (_, __) => const SizedBox(),
                      )),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: SizedBox(
                  height: 400,
                  child: PokemonsList(
                    pokemons: ['asd', 'asda', 'dasd'],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
