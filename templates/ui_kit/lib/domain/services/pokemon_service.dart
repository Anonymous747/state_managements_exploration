import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/domain/domain.dart';

class PokemonService {
  final DioClient _dio;

  const PokemonService(this._dio);

  Future<Either<int?, PokemonResponse?>> getPokemons() async {
    try {
      final response = await _dio.get(Endpoint.pokemon);

      if (response.data == null) {
        return right(null);
      }

      final pokemonsModel = PokemonResponse.fromJson(response.data);

      return right(pokemonsModel);
    } on DioException catch (e) {
      print('error PokemonService getPokemons e = $e');

      return left(e.response?.statusCode);
    }
  }
}
