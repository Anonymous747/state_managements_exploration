import 'package:ui_kit/ui_kit.dart';

import 'package:provider_template/presentation/presentation.dart';

initProviderDependencies() {
  getIt.registerFactory<PokedexProvider>(() => PokedexProvider());
  getIt.registerFactory<PokemonCellProvider>(() => PokemonCellProvider());
}
