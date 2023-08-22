import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_cell_state.freezed.dart';

@freezed
class PokemonCellState with _$PokemonCellState {
  factory PokemonCellState({
    @Default(true) bool isLoading,
    PokemonViewModel? viewModel,
    String? errorMessage,
  }) = _PokemonCellState;
}
