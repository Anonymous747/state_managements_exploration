import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/domain/domain.dart';

class MainPokemonRepository extends PokemonRepository {
  final Client _dio;

  MainPokemonRepository(this._dio);

  @override
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

  @override
  Future<Either<int?, PokemonsResponse?>> getPokemons(
    PokemonDataRequest request,
  ) async {
    final params = request.toJson();

    try {
      final response = await _dio.get(
        Endpoint.pokemon,
        queryParameters: params,
      );

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
