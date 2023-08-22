import 'package:ui_kit/domain/domain.dart';
import 'package:ui_kit/presentation/presentation.dart';

class PokemonCellMapper {
  PokemonViewModel toViewModel(PokemonDataResponse model) {
    return PokemonViewModel(
      name: model.name ?? '',
      imageUrl: model.sprites?.frontDefault ?? model.sprites?.frontShiny ?? '',
      id: model.id,
      abilities: model.abilities
              ?.where((ability) => ability.ability != null)
              .map((ability) => ability.ability!)
              .toList() ??
          [],
      stats: model.stats ?? [],
      // TODO: Finish color system
      color: 'Grey',
    );
  }
}
