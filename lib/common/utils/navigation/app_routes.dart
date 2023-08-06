import 'package:state_managements_exploration/screens/select_management_screen.dart';
import 'package:bloc_template/bloc_template.dart' as bloc;

final appRoutes = {
  SelectManagementScreen.routeName: (context) => const SelectManagementScreen(),
  bloc.PokedexScreen.route_name: (context) => const bloc.PokedexScreen(),
};
