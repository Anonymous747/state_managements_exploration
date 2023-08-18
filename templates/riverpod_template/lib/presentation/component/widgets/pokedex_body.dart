import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_template/presentation/presentation.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexBody extends HookConsumerWidget {
  final String name;

  const PokedexBody({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(pokemonCellControllerProvider.notifier).loadPokemon(name);

    final cellState = ref.watch(pokemonCellControllerProvider
      ..select((value) => value.viewModels[name]));
    final pokemon = cellState.viewModels[name];

    print('========= build name = $name');

    return GestureDetector(
      onTap: () =>
          cellState.isLoading ? null : navigateToStats(context, pokemon!),
      child: PokemonCell(
        pokemon: pokemon,
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
