import 'package:redux/redux.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

Reducer<PokedexState> pokedexReducers = combineReducers([
  TypedReducer<PokedexState, PokedexLoadAction>(_pokedexLoadHandling),
  TypedReducer<PokedexState, PokedexLoadFailureAction>(
      _pokedexLoadFailureHandling),
  TypedReducer<PokedexState, PokedexSearchAction>(_pokedexSearchHandling),
]);

PokedexState _pokedexLoadHandling(
    PokedexState prevState, PokedexLoadAction action) {
  return prevState.copyWith(
    viewModels: action.viewModels,
    isLoading: false,
    errorMessage: null,
  );
}

PokedexState _pokedexLoadFailureHandling(
    PokedexState prevState, PokedexLoadFailureAction action) {
  return prevState.copyWith(
      isLoading: false, errorMessage: action.message ?? Strings.defaultFailure);
}

PokedexState _pokedexSearchHandling(
    PokedexState prevState, PokedexSearchAction action) {
  return prevState.copyWith(
    suitableForSearch: action.suitableForSearch,
  );
}
