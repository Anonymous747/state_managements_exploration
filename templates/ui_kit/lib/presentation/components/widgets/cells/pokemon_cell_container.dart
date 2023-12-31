import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/presentation/presentation.dart';

class PokemonCellContainer extends StatelessWidget {
  final PokemonViewModel? pokemon;
  final EdgeInsets? margin;

  const PokemonCellContainer({
    required this.pokemon,
    this.margin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            pokemon?.color?.toColor() ?? Palette.purple700,
            Palette.light
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Palette.blue500.withOpacity(0.6),
            blurRadius: 6,
            offset: const Offset(1, 2),
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: pokemon == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CachedNetworkImage(imageUrl: pokemon!.imageUrl),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    // TODO:
                    pokemon!.name,
                    style:
                        TextStyles.regularBigStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
    );
  }
}
