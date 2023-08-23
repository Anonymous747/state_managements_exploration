import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:riverpod_template/presentation/presentation.dart';

class PokemonCell extends HookConsumerWidget {
  final String name;

  const PokemonCell({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(pokemonCellControllerProvider.notifier).loadPokemon(name);

    final viewModel = ref.watch(pokemonCellControllerProvider
        .select((value) => value.viewModels[name]));

    return GestureDetector(
      onTap: () =>
          viewModel == null ? null : navigateToStats(context, viewModel),
      child: PokemonCellContainer(
        pokemon: viewModel,
        margin: const EdgeInsets.all(12),
      ),
    );
  }

  void navigateToStats(BuildContext context, PokemonViewModel viewModel) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (_) => PokemonStatsContainer(viewModel: viewModel)),
    );
  }
}
