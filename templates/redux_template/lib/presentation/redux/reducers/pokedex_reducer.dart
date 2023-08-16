import 'package:redux/redux.dart';
import 'package:redux_template/presentation/presentation.dart';

const _defaultFailureMessage = 'Something went wrong. Try again later please.';

Reducer<PokedexState> pokedexReducers = combineReducers([
  TypedReducer<PokedexState, LoadPokemonsAction>(_pokemonsLoad),
  TypedReducer<PokedexState, PokemonsLoadFailureAction>(_pokemonsLoadFailure),
]);

PokedexState _pokemonsLoad(PokedexState prevState, LoadPokemonsAction action) {
  print('========= pokedex_reducer _loadPokemons');

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
      isLoading: false, errorMessage: action.message ?? _defaultFailureMessage);
}
