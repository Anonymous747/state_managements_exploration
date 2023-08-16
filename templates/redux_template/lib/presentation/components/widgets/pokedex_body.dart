import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

class PokedexBody extends StatefulWidget {
  final String name;

  const PokedexBody({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  State<PokedexBody> createState() => _PokedexBodyState();
}

class _PokedexBodyState extends State<PokedexBody> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
        onInit: (store) {
          store.dispatch(loadPokemonCellThunk(name: widget.name));
        },
        converter: _ViewModel.fromStore,
        builder: (context, _ViewModel viewModel) {
          return PokemonCell(
            pokemon: viewModel.viewModel[widget.name],
            margin: const EdgeInsets.all(12),
          );
        });
  }
}

class _ViewModel {
  final Map<String, PokemonViewModel?> viewModel;
  final String? errorMessage;
  final bool isLoading;

  final StringBuilder loadPokemon;

  const _ViewModel({
    required this.viewModel,
    required this.isLoading,
    required this.errorMessage,
    required this.loadPokemon,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
        viewModel: store.state.pokemonCellState.viewModels,
        isLoading: store.state.pokemonCellState.isLoading,
        errorMessage: store.state.pokemonCellState.errorMessage,
        loadPokemon: (name) {
          store.dispatch(loadPokemonCellThunk(name: name));
        });
  }
}
