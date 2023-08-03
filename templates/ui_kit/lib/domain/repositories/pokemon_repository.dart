import 'package:ui_kit/domain/domain.dart';

class PokemonRepository {
  final PokemonService _pokemonService;

  const PokemonRepository(this._pokemonService);

  Future<void> getPokemons({
    required void Function(PokemonResponse) onSuccess,
    required void Function(String) onError,
  }) async {
    final response = await _pokemonService.getPokemons();

    return response.fold((l) {
      onError('Failed to fetch post. Try again later.');
    }, (r) {
      if (r == null) {
        onError('The pokemons list is empty');
        return;
      }

      onSuccess(r);
    });
  }
}
