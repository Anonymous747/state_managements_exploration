import 'package:ui_kit/domain/domain.dart';

abstract class PokemonService {
  Future<void> getPokemonData({
    required String name,
    required void Function(PokemonDataResponse) onSuccess,
    required void Function(String) onError,
  });

  Future<void> getPokemons({
    required int limit,
    required int offset,
    required void Function(PokemonsResponse) onSuccess,
    required void Function(String) onError,
  });
}
