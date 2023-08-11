import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/domain/domain.dart';

class PokemonService {
  final DioClient _dio;

  const PokemonService(this._dio);

  Future<Either<int?, PokemonDataResponse?>> getPokemonData({
    required String name,
  }) async {
    try {
      final response = await _dio.get('${Endpoint.pokemon}/$name');

      if (response.data == null) {
        return right(null);
      }

      final pokemonModel = PokemonDataResponse.fromJson(response.data);

      return right(pokemonModel);
    } on DioException catch (e) {
      return left(e.response?.statusCode);
    }
  }

  Future<Either<int?, PokemonsResponse?>> getPokemons({
    int limit = 20,
    int offset = 20,
  }) async {
    try {
      final response = await _dio.get(Endpoint.pokemon);

      if (response.data == null) {
        return right(null);
      }

      final pokemonsModel = PokemonsResponse.fromJson(response.data);

      return right(pokemonsModel);
    } on DioException catch (e) {
      return left(e.response?.statusCode);
    }
  }
}
