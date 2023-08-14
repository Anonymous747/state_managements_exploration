import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';
import 'package:ui_kit/domain/domain.dart';

final getIt = GetIt.instance;

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
  _initHive();
  _initRepositories();
  _initServices();
}

_initHive() {
  Hive.init(null);
}

_initRepositories() {
  getIt.registerFactory<Client>(() => DioClient());
  getIt.registerFactory<PokemonRepository>(
      () => MainPokemonRepository(getIt.get()));
}

_initServices() {
  getIt.registerFactory<PokemonService>(() => MainPokemonService(getIt.get()));
}
