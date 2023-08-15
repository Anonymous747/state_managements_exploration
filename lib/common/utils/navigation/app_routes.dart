import 'package:state_managements_exploration/presentation/screens/select_management_screen.dart';
import 'package:bloc_template/bloc_template.dart' as bloc;
import 'package:redux_template/redux_template.dart' as redux;

final appRoutes = {
  SelectManagementScreen.routeName: (context) => const SelectManagementScreen(),
  bloc.PokedexScreen.route_name: (context) => const bloc.PokedexScreen(),
  redux.PokedexScreen.route_name: (context) => const redux.PokedexScreen(),
};
