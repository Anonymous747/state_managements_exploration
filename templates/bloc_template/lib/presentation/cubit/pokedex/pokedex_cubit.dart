import 'package:flutter/cupertino.dart';
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

  PokedexCubit(this._pokemonService) : super(const PokedexState.loading()) {
    _receivePokemons();

    scrollController.addListener(_paginationHandling);
  }

  int offset = 20;

  void _paginationHandling() {
    state.mapOrNull(loaded: (loadState) {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        offset += _limit;
        emit(loadState.copyWith(isLoading: true));
        _receivePokemons(limit: _limit, offset: offset);
      }
    });
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
    scrollController.dispose();

    return super.close();
  }
}
