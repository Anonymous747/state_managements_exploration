import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PokemonStatsScreen extends StatelessWidget {
  final PokemonViewModel viewModel;

  const PokemonStatsScreen({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PokemonStatsContainer(viewModel: viewModel);
  }
}
