part of 'pokemon_cell_cubit.dart';

class PokemonCellMapper {
  PokemonViewModel toViewModel(PokemonDataResponse model) {
    return PokemonViewModel(
      name: model.name ?? '',
      imageUrl: model.sprites?.frontDefault ?? model.sprites?.frontShiny ?? '',
      id: model.id,
      abilities:
          model.abilities?.map((ability) => ability.ability).toList() ?? [],
      stats: model.stats,
      color: Palette.purple700,
    );
  }
}
