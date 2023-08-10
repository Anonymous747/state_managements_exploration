part of './pokedex_cubit.dart';

class PokedexMapper {
  /// It may be an extension on [PokemonModel], however it option is closer to me
  ///
  List<PokemonBaseViewModel> convertToViewModel(List<PokemonPreview> pokemons) {
    final viewModels = pokemons
        .map((pokemon) => PokemonBaseViewModel(
              name: pokemon.name,
              imageUrl: pokemon.url,
            ))
        .toList();

    return viewModels;
  }
}
