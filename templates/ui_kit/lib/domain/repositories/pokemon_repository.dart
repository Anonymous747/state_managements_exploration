import 'package:ui_kit/domain/domain.dart';

const _generalErrorMessage = 'Failed to fetch post. Try again later.';
const _emptyListErrorMessage = 'The pokemons list is empty';

class PokemonRepository {
  final PokemonService _pokemonService;

  const PokemonRepository(this._pokemonService);

  Future<void> getPokemonData({
    required String name,
    required void Function(PokemonDataResponse) onSuccess,
    required void Function(String) onError,
  }) async {
    final response = await _pokemonService.getPokemonData(name: name);

    response.fold(
      (l) => onError(_generalErrorMessage),
      (r) {
        if (r == null) {
          onError(_generalErrorMessage);
          return;
        }

        onSuccess(r!);
      },
    );
  }

  Future<void> getPokemons({
    required void Function(PokemonsResponse) onSuccess,
    required void Function(String) onError,
  }) async {
    final response = await _pokemonService.getPokemons();

    print('repository getPokemons = response = $response');

    return response.fold((l) {
      onError(_generalErrorMessage);
    }, (r) {
      if (r == null) {
        onError(_emptyListErrorMessage);
        return;
      }

      onSuccess(r);
    });
  }
}
