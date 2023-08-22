import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:provider_template/data/data.dart';

class PokemonCellProvider extends ChangeNotifier {
  final _pokemonService = instanceOf<PokemonService>();
  final _storeRepository = instanceOf<StoreRepository>();

  PokemonCellState state = PokemonCellState();

  Future<void> loadPokemon(String name) async {
    final mapper = PokemonCellMapper();

    final dtoModel = await _storeRepository.get(name);

    if (dtoModel != null) {
      final viewModel = dtoModel.toViewModel().cast as PokemonViewModel;

      state = state.copyWith(viewModel: viewModel);

      notifyListeners();
    } else {
      _pokemonService.getPokemonData(
          name: name,
          onSuccess: (model) {
            final viewModel = mapper.toViewModel(model);

            final stdModel = viewModel.toTdo();
            _storeRepository.put(name, stdModel);

            state = state.copyWith(viewModel: viewModel, isLoading: false);

            notifyListeners();
          },
          onError: (errorMessage) {
            state =
                state.copyWith(isLoading: false, errorMessage: errorMessage);

            notifyListeners();
          });
    }
  }
}
