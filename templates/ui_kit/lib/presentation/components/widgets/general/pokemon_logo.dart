import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';

class PokemonLogo extends StatelessWidget {
  const PokemonLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 280),
      child: CachedNetworkImage(
        imageUrl: Sources.pokemonLogo,
        placeholder: (_, __) => const SizedBox(height: 200),
      ),
    );
  }
}
