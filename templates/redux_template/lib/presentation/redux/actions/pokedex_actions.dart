import 'package:ui_kit/ui_kit.dart';

class LoadPokemonsAction {
  final List<PokemonBaseViewModel> viewModels;

  const LoadPokemonsAction({required this.viewModels});
}

class PokemonsLoadFailureAction {
  final String? message;

  const PokemonsLoadFailureAction({required this.message});
}

class LoadPokemonStatsAction {
  final String name;

  const LoadPokemonStatsAction({required this.name});
}

class SearchPokemonsAction {
  final List<PokemonBaseViewModel> suitableForSearch;

  const SearchPokemonsAction(this.suitableForSearch);
}
