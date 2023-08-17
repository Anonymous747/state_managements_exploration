import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/presentation/presentation.dart';

class PokedexScreen extends StatelessWidget {
  static const route_name = 'redux_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: StoreConnector<AppState, _ViewModel>(
          ignoreChange: (store) {
            return store.pokedexState.isLoading;
          },
          onInitialBuild: (store) {
            store.loadPokemons();
          },
          converter: _ViewModel.fromStore,
          builder: (context, _ViewModel viewModel) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            final isSearching = viewModel.suitableForSearch.isNotEmpty;
            final pokemons = isSearching
                ? viewModel.suitableForSearch
                : viewModel.baseModels;

            return PokedexContainer(
              searchListener: viewModel.onSearchListener,
              scrollListener: viewModel.onScrollListener,
              pokemons: pokemons,
              namedCellBuilder: ({required String name}) {
                return PokedexBody(name: name);
              },
            );
          }),
    );
  }
}

class _ViewModel {
  final List<PokemonBaseViewModel> baseModels;
  final List<PokemonBaseViewModel> suitableForSearch;
  final bool isLoading;
  final bool isLoadMore;
  final String? errorMessage;

  final VoidCallback loadPokemons;
  final StringBuilder onSearchListener;
  final Function(double, double) onScrollListener;

  const _ViewModel({
    required this.suitableForSearch,
    required this.baseModels,
    required this.isLoading,
    required this.isLoadMore,
    required this.errorMessage,
    required this.loadPokemons,
    required this.onSearchListener,
    required this.onScrollListener,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      suitableForSearch: store.state.pokedexState.suitableForSearch,
      baseModels: store.state.pokedexState.viewModels,
      isLoading: store.state.pokedexState.isLoading,
      isLoadMore: store.state.pokedexState.isLoadMore,
      errorMessage: store.state.pokedexState.errorMessage,
      loadPokemons: () {
        store.dispatch(pokedexLoadThunk());
      },
      onSearchListener: (text) {
        store.dispatch(pokedexSearchThunk(text));
      },
      onScrollListener: (maxScrollExtent, pixels) {
        store.dispatch(pokedexLoadMoreThunk(
          maxScrollExtent: maxScrollExtent,
          pixels: pixels,
        ));
      },
    );
  }
}
