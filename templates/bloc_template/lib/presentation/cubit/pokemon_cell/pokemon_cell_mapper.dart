part of 'pokemon_cell_cubit.dart';

class PokemonCellMapper {
  PokemonViewModel toViewModel(PokemonDataResponse model) {
    return PokemonViewModel(
      name: model.name,
      imageUrl: model.sprites.frontDefault ?? model.sprites.frontShiny ?? '',
      color: Palette.purple700,
    );
  }
}
