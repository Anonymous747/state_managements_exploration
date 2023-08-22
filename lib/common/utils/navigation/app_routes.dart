import 'package:state_managements_exploration/presentation/presentation.dart';

import 'package:provider_template/provider_template.dart' as provider;
import 'package:riverpod_template/riverpod_template.dart' as riverpod;
import 'package:mobx_template/mobx_template.dart' as mobx;
import 'package:redux_template/redux_template.dart' as redux;
import 'package:bloc_template/bloc_template.dart' as bloc;

final appRoutes = {
  SelectManagementScreen.routeName: (context) => const SelectManagementScreen(),
  provider.PokedexScreen.routeName: (context) => const provider.PokedexScreen(),
  riverpod.PokedexScreen.routeName: (context) => const riverpod.PokedexScreen(),
  mobx.PokedexScreen.routeName: (context) => const mobx.PokedexScreen(),
  redux.PokedexScreen.routeName: (context) => const redux.PokedexScreen(),
  bloc.PokedexScreen.routeName: (context) => const bloc.PokedexScreen(),
};
