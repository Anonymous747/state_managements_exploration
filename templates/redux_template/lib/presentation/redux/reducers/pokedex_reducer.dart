import 'package:redux/redux.dart';
import 'package:redux_template/presentation/presentation.dart';
import 'package:ui_kit/ui_kit.dart';

Reducer<PokedexState> pokedexReducers = combineReducers([
  TypedReducer<PokedexState, LoadPokemonsAction>(_pokemonsLoad),
  TypedReducer<PokedexState, PokemonsLoadFailureAction>(_pokemonsLoadFailure),
  TypedReducer<PokedexState, SearchPokemonsAction>(_pokemonsSearch),
]);

PokedexState _pokemonsLoad(PokedexState prevState, LoadPokemonsAction action) {
  return prevState.copyWith(
    viewModels: action.viewModels,
    isLoading: false,
    errorMessage: null,
  );
}

PokedexState _pokemonsLoadFailure(
    PokedexState prevState, PokemonsLoadFailureAction action) {
  print('========= _pokemonsLoadFailure');
  return prevState.copyWith(
      isLoading: false,
      errorMessage: action.message ?? Strings.defaultFailureMessage);
}

PokedexState _pokemonsSearch(
    PokedexState prevState, SearchPokemonsAction action) {
  return prevState.copyWith(
    suitableForSearch: action.suitableForSearch,
  );
}
