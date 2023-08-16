import 'dart:async';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

final _mapper = PokedexMapper();

Timer? _timer;

ThunkAction<AppState> loadPokemonsThunk({
  int limit = Constants.listLimitation,
  int offset = 0,
}) =>
    (store) => loadPokemons(store, limit: limit, offset: offset);

ThunkAction<AppState> searchHandlingThunk(String text) =>
    (store) => searchHandling(store, text: text);

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
              const PokemonsLoadFailureAction(message: Strings.emptyListError));
          return;
        }

        final viewModels = _mapper.convertToViewModel(pokemons);

        store.dispatch(LoadPokemonsAction(viewModels: viewModels));
      },
      onError: (errorMessage) {
        store.dispatch(PokemonsLoadFailureAction(message: errorMessage));
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

  store.dispatch(SearchPokemonsAction(filteredList));
}
