part of 'pokemon_cell_cubit.dart';

@freezed
class PokemonCellState with _$PokemonCellState {
  const factory PokemonCellState.loading() = PokemonCellLoadingState;
  const factory PokemonCellState.loaded({required PokemonViewModel viewModel}) =
      _PokemonCellLoadedState;
  const factory PokemonCellState.error({required String? message}) =
      _PokemonCellErrorState;
}
