// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokedexStore on _PokedexStore, Store {
  late final _$baseViewModelsAtom =
      Atom(name: '_PokedexStore.baseViewModels', context: context);

  @override
  List<PokemonBaseViewModel> get baseViewModels {
    _$baseViewModelsAtom.reportRead();
    return super.baseViewModels;
  }

  @override
  set baseViewModels(List<PokemonBaseViewModel> value) {
    _$baseViewModelsAtom.reportWrite(value, super.baseViewModels, () {
      super.baseViewModels = value;
    });
  }

  late final _$suitableForSearchAtom =
      Atom(name: '_PokedexStore.suitableForSearch', context: context);

  @override
  List<PokemonBaseViewModel> get suitableForSearch {
    _$suitableForSearchAtom.reportRead();
    return super.suitableForSearch;
  }

  @override
  set suitableForSearch(List<PokemonBaseViewModel> value) {
    _$suitableForSearchAtom.reportWrite(value, super.suitableForSearch, () {
      super.suitableForSearch = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_PokedexStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_PokedexStore.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$_PokedexStoreActionController =
      ActionController(name: '_PokedexStore', context: context);

  @override
  void paginationHandling(double maxScrollExtent, double pixels) {
    final _$actionInfo = _$_PokedexStoreActionController.startAction(
        name: '_PokedexStore.paginationHandling');
    try {
      return super.paginationHandling(maxScrollExtent, pixels);
    } finally {
      _$_PokedexStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchHandling(String text) {
    final _$actionInfo = _$_PokedexStoreActionController.startAction(
        name: '_PokedexStore.searchHandling');
    try {
      return super.searchHandling(text);
    } finally {
      _$_PokedexStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _searchPokemonByName(String text) {
    final _$actionInfo = _$_PokedexStoreActionController.startAction(
        name: '_PokedexStore._searchPokemonByName');
    try {
      return super._searchPokemonByName(text);
    } finally {
      _$_PokedexStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _loadPokemons({int limit = Constants.listLimitation, int offset = 0}) {
    final _$actionInfo = _$_PokedexStoreActionController.startAction(
        name: '_PokedexStore._loadPokemons');
    try {
      return super._loadPokemons(limit: limit, offset: offset);
    } finally {
      _$_PokedexStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
baseViewModels: ${baseViewModels},
suitableForSearch: ${suitableForSearch},
isLoading: ${isLoading},
errorMessage: ${errorMessage}
    ''';
  }
}
