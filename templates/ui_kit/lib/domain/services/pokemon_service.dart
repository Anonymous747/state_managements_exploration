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
      print('========= pokemon path ${Endpoint.pokemon}/$name');

      final response = await _dio.get('${Endpoint.pokemon}/$name');

      print('pokemon data response = ${response.data}');

      if (response.data == null) {
        return right(null);
      }

      final pokemonModel = PokemonDataResponse.fromJson(response.data);

      print('pokemon data responseModel = $pokemonModel');

      return right(pokemonModel);
    } on DioException catch (e) {
      print('error PokemonService getPokemons e = $e');

      return left(e.response?.statusCode);
    }
  }

  Future<Either<int?, PokemonsResponse?>> getPokemons({
    int limit = 20,
    int offset = 20,
  }) async {
    try {
      final response = await _dio.get(Endpoint.pokemon);

      print('response = ${response.data}');

      if (response.data == null) {
        return right(null);
      }

      final pokemonsModel = PokemonsResponse.fromJson(response.data);

      print('responseModel = $pokemonsModel');

      return right(pokemonsModel);
    } on DioException catch (e) {
      print('error PokemonService getPokemons e = $e');

      return left(e.response?.statusCode);
    }
  }
}
