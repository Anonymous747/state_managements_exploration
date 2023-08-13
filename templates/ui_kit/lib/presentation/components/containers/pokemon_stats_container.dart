import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokemonStatsContainer extends StatelessWidget {
  final PokemonViewModel viewModel;

  const PokemonStatsContainer({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.dark,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Palette.dark, Palette.purple300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.6],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                alignment: Alignment.topLeft,
                child: const BackButton(
                  color: Palette.light,
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 140, 16, 24),
                      color: Colors.transparent,
                      child: Flex(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        direction: Axis.vertical,
                        children: [
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Palette.light,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 100),
                                  Text(
                                    '#${viewModel.id} ${viewModel.name}',
                                    style: TextStyles.regularCustomSizeStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  AbilityLabels(
                                    abilities: viewModel.abilities,
                                  ),
                                  PokemonStats(
                                    stats: viewModel.stats,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CachedNetworkImage(
                          imageUrl: viewModel.imageUrl,
                          alignment: Alignment.center,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
