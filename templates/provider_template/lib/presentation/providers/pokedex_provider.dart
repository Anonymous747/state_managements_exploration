import 'dart:async';

import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:provider_template/data/data.dart';

class PokedexProvider extends ChangeNotifier {
  final _pokemonService = instanceOf<PokemonService>();

  final _mapper = PokedexMapper();

  PokedexProvider() {
    _receivePokemons();
  }

  PokedexState state = PokedexState();

  Timer? _timer;
  int _offset = 0;

  void _receivePokemons(
      {int limit = Constants.listLimitation, int offset = 0}) {
    _pokemonService.getPokemons(
        limit: limit,
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

          notifyListeners();
        },
        onError: (errorMessage) {
          state = state.copyWith(isLoading: false, errorMessage: errorMessage);

          notifyListeners();
        });
  }

  void paginationHandling(double maxScrollExtent, double pixels) {
    if (state.suitableForSearch.isEmpty && maxScrollExtent == pixels) {
      _offset += Constants.listLimitation;

      _receivePokemons(offset: _offset);
    }
  }

  void searchHandling(String text) {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer(
      const Duration(seconds: 2),
      () => _searchPokemonByName(text),
    );
  }

  void _searchPokemonByName(String text) {
    if (text.isEmpty) {
      state = state.copyWith(suitableForSearch: []);

      notifyListeners();
      return;
    }

    final searchFragment = text;

    final filteredList = state.viewModels
        .where((pokemon) => pokemon.name.contains(searchFragment))
        .toList();

    state = state.copyWith(suitableForSearch: filteredList);

    notifyListeners();
  }
}
