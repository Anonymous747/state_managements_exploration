import 'package:get_it/get_it.dart';
import 'package:ui_kit/domain/domain.dart';

final _getIt = GetIt.instance;

initUIKitDependencies() {
  _initRepositories();
  _initServices();
}

_initRepositories() {
  _getIt.registerFactory<DioClient>(() => DioClient());
  _getIt.registerFactory<PokemonRepository>(
      () => PokemonRepository(_getIt.get()));
}

_initServices() {
  _getIt.registerFactory<PokemonService>(() => PokemonService(_getIt.get()));
}
