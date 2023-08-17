// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_cell_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonCellStore on _PokemonCellStore, Store {
  late final _$pokemonViewModelAtom =
      Atom(name: '_PokemonCellStore.pokemonViewModel', context: context);

  @override
  PokemonViewModel? get pokemonViewModel {
    _$pokemonViewModelAtom.reportRead();
    return super.pokemonViewModel;
  }

  @override
  set pokemonViewModel(PokemonViewModel? value) {
    _$pokemonViewModelAtom.reportWrite(value, super.pokemonViewModel, () {
      super.pokemonViewModel = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_PokemonCellStore.isLoading', context: context);

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
      Atom(name: '_PokemonCellStore.errorMessage', context: context);

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

  late final _$loadPokemonAsyncAction =
      AsyncAction('_PokemonCellStore.loadPokemon', context: context);

  @override
  Future<void> loadPokemon(String name) {
    return _$loadPokemonAsyncAction.run(() => super.loadPokemon(name));
  }

  @override
  String toString() {
    return '''
pokemonViewModel: ${pokemonViewModel},
isLoading: ${isLoading},
errorMessage: ${errorMessage}
    ''';
  }
}
