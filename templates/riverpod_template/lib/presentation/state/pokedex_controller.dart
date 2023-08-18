import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:ui_kit/ui_kit.dart';

import 'package:riverpod_template/data/data.dart';

part 'pokedex_controller.g.dart';

@riverpod
class PokedexController extends _$PokedexController {
  final _mapper = PokedexMapper();

  Timer? _timer;
  int _offset = 0;

  @override
  PokedexState build() {
    final service = ref.watch(pokemonServiceProvider);
    service.getPokemons(
        limit: Constants.listLimitation,
        offset: _offset,
        onSuccess: (response) {
          final pokemons = response.results;

          if (pokemons == null || pokemons.isEmpty) {
            state = state.copyWith(
              isLoading: false,
              errorMessage: Strings.emptyListFailure,
            );
          }

          final viewModels = _mapper.convertToViewModel(pokemons!);
          final loadedPokemons = [...state.viewModels, ...viewModels];

          state = state.copyWith(
            isLoading: false,
            viewModels: loadedPokemons,
          );
        },
        onError: (errorMessage) {});

    return PokedexState(isLoading: true);
  }

  void receivePokemons() {
    // state = PokedexState(isLoading: false);

    final service = ref.watch(pokemonServiceProvider);

    state = state.copyWith(isLoading: false);
    // return state.copyWith(isLoading: false);
  }
}
