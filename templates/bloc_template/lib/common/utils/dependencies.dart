import 'package:bloc_template/bloc_template.dart';
import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;

initBlocDependencies() {
  _getIt.registerFactory(() => PokedexCubit(_getIt.get()));
  _getIt.registerFactory(() => PokemonCellCubit(_getIt.get()));
  _getIt.registerFactory(() => PokemonStatsCubit());
}
