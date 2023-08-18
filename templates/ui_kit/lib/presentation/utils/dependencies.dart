import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';
import 'package:ui_kit/domain/domain.dart';
import 'package:ui_kit/presentation/presentation.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

final getIt = GetIt.instance;

Box get pokemonBox => Hive.box(HiveBox.pokemonBox);

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

Future<void> initUIKitDependencies() async {
  _initHive();
  _initRepositories();
  _initServices();
}

Future<void> _initHive() async {
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();

  Hive.init(directory.path);

  await HiveBox.registerAdapters();
  await HiveBox.openAll();
}

_initRepositories() {
  getIt.registerFactory<Client>(() => DioClient());
  getIt.registerFactory<PokemonRepository>(
      () => MainPokemonRepository(getIt.get()));
  getIt.registerFactory<StoreRepository>(
      () => HiveStoreRepository<PokemonDataTdo>(box: pokemonBox));
}

_initServices() {
  getIt.registerFactory<PokemonService>(() => MainPokemonService(getIt.get()));
}
