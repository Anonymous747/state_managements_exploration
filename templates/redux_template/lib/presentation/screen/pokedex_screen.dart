import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_template/presentation/presentation.dart';
import 'package:ui_kit/ui_kit.dart';

class PokedexScreen extends StatelessWidget {
  static const route_name = 'redux_pokedex';

  const PokedexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: ReduxInitializerWrapper(
        child: StoreConnector<AppState, _ViewModel>(
            converter: _ViewModel.fromStore,
            builder: (context, _ViewModel viewModel) {
              // if (viewModel.l)

              return PokedexContainer(
                searchController: TextEditingController(),
                namedCellBuilder: ({required String name}) => Container(),
                pokemons: [],
                scrollController: ScrollController(),
              );
            }),
      ),
    );
  }
}

class _ViewModel {
  const _ViewModel();

  static _ViewModel fromStore(Store<AppState> store) {
    // store.state.pokedexState.
    return _ViewModel();
  }
}
