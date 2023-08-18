import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokedex_state.freezed.dart';

@freezed
class PokedexState with _$PokedexState {
  factory PokedexState({
    @Default([]) List<PokemonBaseViewModel> viewModels,
    @Default([]) List<PokemonBaseViewModel> suitableForSearch,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMore,
    String? errorMessage,
  }) = _PokedexLoadedState;
}
