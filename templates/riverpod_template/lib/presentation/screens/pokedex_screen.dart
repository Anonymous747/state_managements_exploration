import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:riverpod_template/presentation/presentation.dart';

class PokedexScreen extends HookConsumerWidget {
  static const String route_name = 'riverpod_pokedex';

  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokedexControllerProvider);

    return Scaffold(
      backgroundColor: Palette.blue300,
      body: Builder(builder: (context) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return PokedexContainer(
          pokemons: state.viewModels,
          scrollListener: (_, __) {},
          searchListener: (_) {},
          namedCellBuilder: ({required String name}) {
            return PokedexBody(name: name);
          },
        );
      }),
    );
  }
}
