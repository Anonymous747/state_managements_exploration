import 'package:ui_kit/ui_kit.dart';
import 'package:mobx_template/presentation/presentation.dart';

initMobXDependencies() {
  getIt.registerFactory<PokedexStore>(() => PokedexStore());
  getIt.registerFactory<PokemonCellStore>(() => PokemonCellStore());
}
