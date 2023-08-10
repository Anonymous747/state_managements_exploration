part of 'pokedex_cubit.dart';

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState.loading() = _PokedexLoadingState;

  const factory PokedexState.loaded(
      {required List<PokemonBaseViewModel> viewModels}) = _PokedexLoadedState;

  const factory PokedexState.error({required String message}) =
      _PokedexErrorState;
}
