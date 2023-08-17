import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_template/presentation/presentation.dart';
import 'package:ui_kit/ui_kit.dart';

ThunkAction<AppState> loadPokemonCellThunk({required String name}) =>
    (store) => loadPokemonCell(store, name: name);

final _storeRepository = instanceOf<StoreRepository>();
final _pokemonService = instanceOf<PokemonService>();

final _mapper = PokemonCellMapper();

void loadPokemonCell(
  Store<AppState> store, {
  required String name,
}) async {
  final dtoModel = await _storeRepository.get(name);
  if (dtoModel != null) {
    final viewModel = dtoModel.toViewModel() as PokemonViewModel;
    final pokemonMap = {name: viewModel};

    store.dispatch(PokemonCellLoadedAction(pokemonMap));
  } else {
    _pokemonService.getPokemonData(
        name: name,
        onSuccess: (model) {
          final viewModel = _mapper.toViewModel(model);

          final stdModel = viewModel.toTdo();
          _storeRepository.put(name, stdModel);

          final pokemonMap = {name: viewModel};
          store.dispatch(PokemonCellLoadedAction(pokemonMap));
        },
        onError: (errorMessage) {
          store.dispatch(PokemonCellLoadFailureAction(errorMessage));
        });
  }
}
