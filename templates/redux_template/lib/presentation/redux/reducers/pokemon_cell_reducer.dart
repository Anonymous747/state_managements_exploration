import 'package:redux/redux.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

Reducer<PokemonCellState> pokedexCellReducers = combineReducers([
  TypedReducer<PokemonCellState, PokemonCellLoadedAction>(_pokemonCellLoad),
  TypedReducer<PokemonCellState, PokemonCellLoadFailureAction>(
      _pokemonCellLoadFailure),
]);

PokemonCellState _pokemonCellLoad(
    PokemonCellState prevState, PokemonCellLoadedAction action) {
  final viewModel = action.viewModel;
  final newMap = {...prevState.viewModels, ...viewModel};

  return prevState.copyWith(
    isLoading: false,
    viewModels: newMap,
  );
}

PokemonCellState _pokemonCellLoadFailure(
    PokemonCellState prevState, PokemonCellLoadFailureAction action) {
  return prevState.copyWith(
      isLoading: false, errorMessage: action.message ?? defaultFailureMessage);
}
