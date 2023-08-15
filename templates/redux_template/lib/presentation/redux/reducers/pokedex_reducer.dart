import 'package:redux/redux.dart';
import 'package:redux_template/presentation/presentation.dart';

Reducer<PokedexState> pokedexReducers = combineReducers(
    [TypedReducer<PokedexState, LoadPokemonsAction>(_loadPokemons)]);

PokedexState _loadPokemons(PokedexState prevState, LoadPokemonsAction action) {
  return prevState.copyWith();
}
