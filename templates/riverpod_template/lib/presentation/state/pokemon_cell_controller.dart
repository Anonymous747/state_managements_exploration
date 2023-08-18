import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_template/data/data.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_cell_controller.g.dart';

@riverpod
class PokemonCellController extends _$PokemonCellController {
  @override
  PokemonCellState build() {
    return PokemonCellState(isLoading: true);
  }

  Future<void> loadPokemon(String name) async {
    final pokemonService = ref.read(pokemonServiceProvider);
    final storeRepository = ref.read(storeRepositoryProvider);

    final mapper = PokemonCellMapper();

    final dtoModel = await storeRepository.get(name);

    if (dtoModel != null) {
      final viewModel = dtoModel.toViewModel().cast as PokemonViewModel;
      final mappedModel = {name: viewModel};
      final updatedMap = state.viewModels..addAll(mappedModel);

      state = state.copyWith(viewModels: updatedMap);
    } else {
      pokemonService.getPokemonData(
          name: name,
          onSuccess: (model) {
            final viewModel = mapper.toViewModel(model);

            final stdModel = viewModel.toTdo();
            storeRepository.put(name, stdModel);

            final mappedModel = {name: viewModel};
            final updatedMap = {...state.viewModels, ...mappedModel};

            state = state.copyWith(viewModels: updatedMap, isLoading: false);
          },
          onError: (errorMessage) {
            state =
                state.copyWith(isLoading: false, errorMessage: errorMessage);
          });
    }
  }
}
