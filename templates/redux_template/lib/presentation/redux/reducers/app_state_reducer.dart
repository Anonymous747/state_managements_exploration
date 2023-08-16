import 'package:redux_template/presentation/presentation.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    pokedexState: pokedexReducers(state.pokedexState, action),
    pokemonCellState: pokedexCellReducers(state.pokemonCellState, action),
  );
}
