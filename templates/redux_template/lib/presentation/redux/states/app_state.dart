import 'package:redux_template/presentation/presentation.dart';

class AppState {
  final PokedexState pokedexState;

  const AppState({
    required this.pokedexState,
  });

  factory AppState.initial() {
    return AppState(
      pokedexState: PokedexState.initial(),
    );
  }

  AppState copyWith({
    PokedexState? pokedexState,
  }) {
    return AppState(
      pokedexState: pokedexState ?? this.pokedexState,
    );
  }
}
