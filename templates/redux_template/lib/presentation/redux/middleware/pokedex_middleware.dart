import 'dart:async';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

final _mapper = PokedexMapper();

/// Need to make delay when search text changing to make sure
/// the user stops typing and waits for the result
///
Timer? _timer;

int _offset = 0;

ThunkAction<AppState> pokedexLoadThunk({
  int limit = Constants.listLimitation,
  int offset = 0,
}) =>
    (store) => loadPokemons(store, limit: limit, offset: offset);

ThunkAction<AppState> pokedexSearchThunk(String text) =>
    (store) => searchHandling(store, text: text);

ThunkAction<AppState> pokedexLoadMoreThunk({
  required double maxScrollExtent,
  required double pixels,
}) =>
    (store) => loadMorePokemons(
          store,
          maxScrollExtent: maxScrollExtent,
          pixels: pixels,
        );

void loadPokemons(
  Store<AppState> store, {
  required int limit,
  required int offset,
}) {
  final pokemonService = instanceOf<PokemonService>();
  pokemonService.getPokemons(
      limit: limit,
      offset: offset,
      onSuccess: (response) {
        final pokemons = response.results;

        if (pokemons == null || pokemons.isEmpty) {
          store.dispatch(
              const PokedexLoadFailureAction(message: Strings.emptyListError));
          return;
        }

        final viewModels = _mapper.convertToViewModel(pokemons);
        final prevViewModels = store.state.pokedexState.viewModels;
        final actualList = [...prevViewModels, ...viewModels];

        store.dispatch(PokedexLoadAction(viewModels: actualList));
      },
      onError: (errorMessage) {
        store.dispatch(PokedexLoadFailureAction(message: errorMessage));
      });
}

void searchHandling(
  Store<AppState> store, {
  String text = '',
}) {
  if (_timer != null) {
    _timer!.cancel();
  }

  _timer = Timer(
    const Duration(seconds: 2),
    () => _searchPokemonByName(store, text),
  );
}

void _searchPokemonByName(Store<AppState> store, String text) {
  final pokemons = store.state.pokedexState.viewModels;

  final filteredList =
      pokemons.where((pokemon) => pokemon.name.contains(text)).toList();

  store.dispatch(PokedexSearchAction(filteredList));
}

void loadMorePokemons(
  Store<AppState> store, {
  required double maxScrollExtent,
  required double pixels,
}) {
  final suitableForSearch = store.state.pokedexState.suitableForSearch;

  if (suitableForSearch.isEmpty && maxScrollExtent == pixels) {
    _offset += Constants.listLimitation;

    loadPokemons(store, limit: Constants.listLimitation, offset: _offset);
  }
}
