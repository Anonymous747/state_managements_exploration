import 'package:mobx/mobx.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_cell_store.g.dart';

class PokemonCellStore = _PokemonCellStore with _$PokemonCellStore;

abstract class _PokemonCellStore with Store {
  final _pokemonService = instanceOf<PokemonService>();
  final _storeRepository = instanceOf<StoreRepository>();

  final _mapper = PokemonCellMapper();

  _PokemonCellStore();

  @observable
  PokemonViewModel? pokemonViewModel;

  @observable
  bool isLoading = true;

  @observable
  String? errorMessage;

  @action
  Future<void> loadPokemon(String name) async {
    final dtoModel = await _storeRepository.get(name);
    if (dtoModel != null) {
      final viewModel = dtoModel.toViewModel();

      pokemonViewModel = viewModel;
      isLoading = false;
    } else {
      _pokemonService.getPokemonData(
          name: name,
          onSuccess: (model) {
            final viewModel = _mapper.toViewModel(model);

            final stdModel = viewModel.toTdo();
            _storeRepository.put(name, stdModel);

            pokemonViewModel = viewModel;
            isLoading = false;
          },
          onError: (errorMessage) {
            errorMessage = errorMessage;
            isLoading = false;
          });
    }
  }
}
