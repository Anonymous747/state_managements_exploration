import 'package:dartz/dartz.dart';
import 'package:ui_kit/domain/domain.dart';

abstract class PokemonRepository {
  Future<Either<int?, PokemonDataResponse?>> getPokemonData({
    required String name,
  });

  Future<Either<int?, PokemonsResponse?>> getPokemons(
    PokemonDataRequest request,
  );
}
