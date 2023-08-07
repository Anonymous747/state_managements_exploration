part of './pokedex_cubit.dart';

class PokedexMapper {
  /// It may be an extension on [PokemonModel], however it option is closer to me
  ///
  PokemonsListViewModel convertToViewModel(List<PokemonModel> pokemons) {
    final viewModels = pokemons
        .map((pokemon) => PokemonViewModel(
              name: 'name',
              imageUrl: 'image',
            ))
        .toList();

    return PokemonsListViewModel(pokemons: viewModels);
  }
}
