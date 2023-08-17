import 'package:redux/redux.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

Reducer<PokedexState> pokedexReducers = combineReducers([
  TypedReducer<PokedexState, PokedexLoadAction>(_pokedexLoad),
  TypedReducer<PokedexState, PokedexLoadFailureAction>(_pokedexLoadFailure),
  TypedReducer<PokedexState, PokedexSearchAction>(_pokedexSearch),
]);

PokedexState _pokedexLoad(PokedexState prevState, PokedexLoadAction action) {
  return prevState.copyWith(
    viewModels: action.viewModels,
    isLoading: false,
    errorMessage: null,
  );
}

PokedexState _pokedexLoadFailure(
    PokedexState prevState, PokedexLoadFailureAction action) {
  return prevState.copyWith(
      isLoading: false,
      errorMessage: action.message ?? Strings.defaultFailureMessage);
}

PokedexState _pokedexSearch(
    PokedexState prevState, PokedexSearchAction action) {
  return prevState.copyWith(
    suitableForSearch: action.suitableForSearch,
  );
}
