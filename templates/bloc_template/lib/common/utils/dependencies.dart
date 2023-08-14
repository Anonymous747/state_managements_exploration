import 'package:bloc_template/bloc_template.dart';
import 'package:ui_kit/ui_kit.dart';

initBlocDependencies() {
  getIt.registerFactory(() => PokedexCubit(getIt.get()));
  getIt.registerFactory(() => PokemonCellCubit(getIt.get(), getIt.get()));
}
