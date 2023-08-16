import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_template/presentation/presentation.dart';
import 'package:ui_kit/ui_kit.dart';

const _limit = 20;

final _mapper = PokedexMapper();

ThunkAction<AppState> loadPokemonsThunk({
  int limit = _limit,
  int offset = 0,
}) =>
    (store) => loadPokemons(store, limit: limit, offset: offset);

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
              const PokemonsLoadFailureAction(message: emptyListError));
          return;
        }

        final viewModels = _mapper.convertToViewModel(pokemons);

        store.dispatch(LoadPokemonsAction(viewModels: viewModels));
      },
      onError: (errorMessage) {
        store.dispatch(PokemonsLoadFailureAction(message: errorMessage));
      });
}
