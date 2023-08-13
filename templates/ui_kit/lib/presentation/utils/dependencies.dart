import 'package:get_it/get_it.dart';
import 'package:ui_kit/domain/domain.dart';

final _getIt = GetIt.instance;

T instanceOf<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
}) =>
    GetIt.instance.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );

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
