import 'package:ui_kit/domain/domain.dart';

class PokemonCellLoadedAction {
  final Map<String, PokemonViewModel> viewModel;

  const PokemonCellLoadedAction(this.viewModel);
}

class PokemonCellLoadFailureAction {
  final String? message;

  const PokemonCellLoadFailureAction(this.message);
}
