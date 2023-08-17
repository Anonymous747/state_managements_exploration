import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

class PokedexCubit extends Cubit<PokedexState> {
  final PokemonService _pokemonService;

  final PokedexMapper _mapper = PokedexMapper();

  Timer? _timer;

  PokedexCubit(this._pokemonService) : super(const PokedexState.loading()) {
    _receivePokemons();
  }

  int _offset = 20;

  void paginationHandling(double maxScrollExtent, double pixels) {
    state.mapOrNull(loaded: (loadState) {
      if (loadState.suitableForSearch.isEmpty && maxScrollExtent == pixels) {
        _offset += Constants.listLimitation;

        emit(loadState.copyWith(isLoading: true));
        _receivePokemons(limit: Constants.listLimitation, offset: _offset);
      }
    });
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
    state.mapOrNull(loaded: (loadedState) {
      final searchFragment = text;

      final filteredList = loadedState.viewModels
          .where((pokemon) => pokemon.name.contains(searchFragment))
          .toList();

      emit(loadedState.copyWith(suitableForSearch: filteredList));
    });
  }

  Future<void> _receivePokemons(
      {int limit = Constants.listLimitation, int offset = 0}) async {
    _pokemonService.getPokemons(
      limit: limit,
      offset: offset,
      onSuccess: (response) {
        final pokemons = response.results;

        if (pokemons == null || pokemons.isEmpty) {
          emit(const PokedexState.error(message: Strings.emptyListFailure));
          return;
        }

        final viewModels = _mapper.convertToViewModel(pokemons);

        state.mapOrNull(loading: (_) {
          emit(PokedexState.loaded(viewModels: viewModels));
        }, loaded: (loadedState) {
          final loadedPokemons = [
            ...loadedState.viewModels,
            ...viewModels,
          ];

          emit(loadedState.copyWith(
              viewModels: loadedPokemons, isLoading: false));
        });
      },
      onError: (message) {
        emit(PokedexState.error(message: message));
      },
    );
  }
}
