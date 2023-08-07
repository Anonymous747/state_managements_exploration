import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/domain/domain.dart';

class PokemonService {
  final DioClient _dio;

  const PokemonService(this._dio);

  Future<Either<int?, PokemonResponse?>> getPokemons({
    int limit = 20,
    int offset = 20,
  }) async {
    try {
      final response = await _dio.get(Endpoint.pokemon);

      print('response = ${response.data}');

      if (response.data == null) {
        return right(null);
      }

      final pokemonsModel = PokemonResponse.fromJson(response.data);

      print('responseModel = $pokemonsModel');

      return right(pokemonsModel);
    } on DioException catch (e) {
      print('error PokemonService getPokemons e = $e');

      return left(e.response?.statusCode);
    }
  }
}
