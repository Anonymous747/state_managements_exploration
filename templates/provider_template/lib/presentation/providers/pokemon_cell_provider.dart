import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:provider_template/data/data.dart';

class PokemonCellProvider extends ChangeNotifier {
  final _pokemonService = instanceOf<PokemonService>();
  final _storeRepository = instanceOf<StoreRepository>();

  PokemonCellState state = PokemonCellState();

  /// Need to define when widget was disposed
  ///
  bool _isDisposed = false;

  /// Need to trigger listeners for widget rebuilding
  ///
  void _notifyListeners() {
    if (!_isDisposed) {
      notifyListeners();
    }
  }

  Future<void> loadPokemon(String name) async {
    // When you list too low, so it's more optimal to cancel the
    // download immediately
    if (_isDisposed) return;

    final mapper = PokemonCellMapper();

    final dtoModel = await _storeRepository.get(name);

    if (dtoModel != null) {
      final viewModel = dtoModel.toViewModel().cast as PokemonViewModel;

      state = state.copyWith(viewModel: viewModel);

      _notifyListeners();
    } else {
      _pokemonService.getPokemonData(
          name: name,
          onSuccess: (model) {
            final viewModel = mapper.toViewModel(model);

            final stdModel = viewModel.toTdo();
            _storeRepository.put(name, stdModel);

            state = state.copyWith(viewModel: viewModel, isLoading: false);

            _notifyListeners();
          },
          onError: (errorMessage) {
            state =
                state.copyWith(isLoading: false, errorMessage: errorMessage);

            _notifyListeners();
          });
    }
  }

  @override
  void dispose() {
    _isDisposed = true;

    super.dispose();
  }
}
