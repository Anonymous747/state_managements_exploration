import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokedex_store.g.dart';

class PokedexStore = _PokedexStore with _$PokedexStore;

abstract class _PokedexStore with Store {
  final _pokemonService = instanceOf<PokemonService>();

  final _mapper = PokedexMapper();

  _PokedexStore() {
    _loadPokemons();

    isLoading = false;
  }

  Timer? _timer;
  int _offset = 0;

  @observable
  List<PokemonBaseViewModel> baseViewModels = [];

  @observable
  List<PokemonBaseViewModel> suitableForSearch = [];

  @observable
  bool isLoading = true;

  @observable
  String? errorMessage;

  @action
  void paginationHandling(double maxScrollExtent, double pixels) {
    if (suitableForSearch.isNotEmpty) return;

    if (maxScrollExtent == pixels) {
      _offset += Constants.listLimitation;

      _loadPokemons(limit: Constants.listLimitation, offset: _offset);
    }
  }

  @action
  void searchHandling(String text) {
    if (_timer != null) {
      _timer!.cancel();
    }

    _timer = Timer(
      const Duration(seconds: 2),
      () => _searchPokemonByName(text),
    );
  }

  @action
  void _searchPokemonByName(String text) {
    final searchFragment = text;

    final filteredList = baseViewModels
        .where((pokemon) => pokemon.name.contains(searchFragment))
        .toList();

    suitableForSearch = filteredList;
  }

  @action
  void _loadPokemons({int limit = Constants.listLimitation, int offset = 0}) {
    _pokemonService.getPokemons(
      limit: limit,
      offset: offset,
      onSuccess: (response) {
        final pokemons = response.results;

        if (pokemons == null || pokemons.isEmpty) {
          errorMessage = Strings.emptyListFailure;
          return;
        }

        final viewModels = _mapper.convertToViewModel(pokemons);
        baseViewModels = [...baseViewModels, ...viewModels];
      },
      onError: (message) {
        errorMessage = message;
      },
    );
  }
}
