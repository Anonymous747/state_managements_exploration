import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokedex_mapper.dart';
part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

const _emptyListError = 'The pokemons list is empty';
const _limit = 20;

class PokedexCubit extends Cubit<PokedexState> {
  final PokemonService _pokemonService;

  final PokedexMapper _mapper = PokedexMapper();
  final scrollController = ScrollController();
  final searchController = TextEditingController();

  Timer? _timer;

  PokedexCubit(this._pokemonService) : super(const PokedexState.loading()) {
    _receivePokemons();

    scrollController.addListener(_paginationHandling);
    searchController.addListener(_searchHandlng);
  }

  int offset = 20;

  void _paginationHandling() {
    state.mapOrNull(loaded: (loadState) {
      if (loadState.suitableForSearch.isEmpty &&
          scrollController.position.maxScrollExtent ==
              scrollController.position.pixels) {
        offset += _limit;

        emit(loadState.copyWith(isLoading: true));
        _receivePokemons(limit: _limit, offset: offset);
      }
    });
  }

  void _searchHandlng() {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer(
      const Duration(seconds: 2),
      _searchPokemonByName,
    );
  }

  void _searchPokemonByName() {
    state.mapOrNull(loaded: (loadedState) {
      final searchFragment = searchController.text;

      final filteredList = loadedState.viewModels
          .where((pokemon) => pokemon.name.contains(searchFragment))
          .toList();

      emit(loadedState.copyWith(suitableForSearch: filteredList));
    });

    // TODO: Implement pokemon searching and possibility to
  }

  Future<void> _receivePokemons({int limit = _limit, int offset = 0}) async {
    _pokemonService.getPokemons(
      limit: limit,
      offset: offset,
      onSuccess: (response) {
        final pokemons = response.results;

        if (pokemons == null || pokemons.isEmpty) {
          emit(const PokedexState.error(message: _emptyListError));
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

  @override
  Future<void> close() {
    scrollController.removeListener(_paginationHandling);
    searchController.removeListener(_searchHandlng);

    scrollController.dispose();
    searchController.dispose();

    return super.close();
  }
}
