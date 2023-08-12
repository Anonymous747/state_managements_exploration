import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_data_request.g.dart';
part 'pokemon_data_request.freezed.dart';

@freezed
class PokemonDataRequest with _$PokemonDataRequest {
  const factory PokemonDataRequest({
    required int offset,
    required int limit,
  }) = _PokemonDataRequest;

  factory PokemonDataRequest.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataRequestFromJson(json);
}
