import 'package:redux_template/presentation/presentation.dart';
import 'package:redux_template/presentation/redux/reducers/pokedex_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    pokedexState: pokedexReducers(state.pokedexState, action),
  );
}
