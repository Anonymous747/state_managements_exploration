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
        distinct: true,
        converter: _ViewModel.fromStore,
        builder: (context, _ViewModel viewModel) {
          return GestureDetector(
            onTap: () => viewModel.navigateToStats(context, widget.name),
            child: PokemonCell(
              pokemon: viewModel.viewModel[widget.name],
              margin: const EdgeInsets.all(12),
            ),
          );
        });
  }
}

class _ViewModel {
  final Map<String, PokemonViewModel?> viewModel;
  final String? errorMessage;
  final bool isLoading;

  final StringBuilder loadPokemon;
  final void Function(BuildContext context, String name) navigateToStats;

  const _ViewModel({
    required this.viewModel,
    required this.isLoading,
    required this.errorMessage,
    required this.loadPokemon,
    required this.navigateToStats,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      viewModel: store.state.pokemonCellState.viewModels,
      isLoading: store.state.pokemonCellState.isLoading,
      errorMessage: store.state.pokemonCellState.errorMessage,
      loadPokemon: (String name) {
        store.dispatch(loadPokemonCellThunk(name: name));
      },
      navigateToStats: (BuildContext context, String name) {
        final viewModel = store.state.pokemonCellState.viewModels[name]!;

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PokemonStatsContainer(viewModel: viewModel),
            ));
      },
    );
  }
}
