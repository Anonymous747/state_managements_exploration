import 'package:bloc_template/bloc_template.dart';
import 'package:get_it/get_it.dart';

final _getIt = GetIt.instance;

initBlocDependencies() {
  GetIt.instance.registerFactory(() => PokedexCubit(_getIt.get()));
}
