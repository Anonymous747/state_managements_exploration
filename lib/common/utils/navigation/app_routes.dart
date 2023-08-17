import 'package:state_managements_exploration/presentation/presentation.dart';
import 'package:bloc_template/bloc_template.dart' as bloc;
import 'package:redux_template/redux_template.dart' as redux;
import 'package:mobx_template/mobx_template.dart' as mobx;

final appRoutes = {
  SelectManagementScreen.routeName: (context) => const SelectManagementScreen(),
  bloc.PokedexScreen.route_name: (context) => const bloc.PokedexScreen(),
  redux.PokedexScreen.route_name: (context) => const redux.PokedexScreen(),
  mobx.PokedexScreen.route_name: (context) => const mobx.PokedexScreen(),
};
