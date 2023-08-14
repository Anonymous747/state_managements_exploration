import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_cell_mapper.dart';
part 'pokemon_cell_state.dart';
part 'pokemon_cell_cubit.freezed.dart';

class PokemonCellCubit extends Cubit<PokemonCellState> {
  final PokemonService _pokemonService;
  final StoreRepository _storeRepository;

  PokemonCellCubit(
    this._pokemonService,
    this._storeRepository,
  ) : super(const PokemonCellState.loading());

  final _mapper = PokemonCellMapper();

  void loadPokemon(String name) async {
    final dtoModel = await _storeRepository.get(name);
    if (dtoModel != null) {
      final viewModel = dtoModel.toViewModel();

      emit(PokemonCellState.loaded(viewModel: viewModel));
    } else {
      _pokemonService.getPokemonData(
          name: name,
          onSuccess: (model) {
            final viewModel = _mapper.toViewModel(model);

            final stdModel = viewModel.toTdo();
            _storeRepository.put(name, stdModel);

            emit(PokemonCellState.loaded(viewModel: viewModel));
          },
          onError: (errorMessage) {
            emit(PokemonCellState.error(message: errorMessage));
          });
    }
  }
}
