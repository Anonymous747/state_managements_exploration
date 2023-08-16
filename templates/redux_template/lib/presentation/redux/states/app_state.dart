import 'package:redux_template/presentation/presentation.dart';

class AppState {
  final PokedexState pokedexState;
  final PokemonCellState pokemonCellState;

  const AppState({
    required this.pokedexState,
    required this.pokemonCellState,
  });

  factory AppState.initial() {
    return AppState(
      pokedexState: PokedexState.load(),
      pokemonCellState: PokemonCellState.load(),
    );
  }

  AppState copyWith({
    PokedexState? pokedexState,
    PokemonCellState? pokemonCellState,
  }) {
    return AppState(
      pokedexState: pokedexState ?? this.pokedexState,
      pokemonCellState: pokemonCellState ?? this.pokemonCellState,
    );
  }
}
