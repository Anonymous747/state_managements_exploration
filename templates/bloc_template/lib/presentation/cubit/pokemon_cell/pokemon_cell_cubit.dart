import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_cell_mapper.dart';
part 'pokemon_cell_state.dart';
part 'pokemon_cell_cubit.freezed.dart';

class PokemonCellCubit extends Cubit<PokemonCellState> {
  final PokemonRepository _pokemonRepository;

  PokemonCellCubit(this._pokemonRepository)
      : super(const PokemonCellState.loading());

  final _mapper = PokemonCellMapper();

  void loadPokemon(String name) {
    _pokemonRepository.getPokemonData(
        name: name,
        onSuccess: (model) {
          final viewModel = _mapper.toViewModel(model);

          emit(PokemonCellState.loaded(viewModel: viewModel));
        },
        onError: (errorMessage) {
          emit(PokemonCellState.error(message: errorMessage));
        });
  }
}
