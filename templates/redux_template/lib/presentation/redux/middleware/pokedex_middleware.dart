import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_template/presentation/presentation.dart';

ThunkAction<PokedexState> createPokedexThunk() => createPokedexHandling;

void createPokedexHandling(Store<PokedexState> store) {
  store.dispatch(LoadPokemonsAction());
}
