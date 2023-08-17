import 'package:ui_kit/ui_kit.dart';

class PokedexLoadAction {
  final List<PokemonBaseViewModel> viewModels;

  const PokedexLoadAction({required this.viewModels});
}

class PokedexLoadFailureAction {
  final String? message;

  const PokedexLoadFailureAction({required this.message});
}

class PokedexLoadStatsAction {
  final String name;

  const PokedexLoadStatsAction({required this.name});
}

class PokedexSearchAction {
  final List<PokemonBaseViewModel> suitableForSearch;

  const PokedexSearchAction(this.suitableForSearch);
}
