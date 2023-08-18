import 'package:state_managements_exploration/presentation/presentation.dart';
import 'package:riverpod_template/riverpod_template.dart' as riverpod;
import 'package:mobx_template/mobx_template.dart' as mobx;
import 'package:redux_template/redux_template.dart' as redux;
import 'package:bloc_template/bloc_template.dart' as bloc;

final appRoutes = {
  SelectManagementScreen.routeName: (context) => const SelectManagementScreen(),
  riverpod.PokedexScreen.route_name: (context) =>
      const riverpod.PokedexScreen(),
  mobx.PokedexScreen.route_name: (context) => const mobx.PokedexScreen(),
  redux.PokedexScreen.route_name: (context) => const redux.PokedexScreen(),
  bloc.PokedexScreen.route_name: (context) => const bloc.PokedexScreen(),
};
