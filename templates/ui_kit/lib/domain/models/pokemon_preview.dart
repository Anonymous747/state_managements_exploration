import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_preview.g.dart';
part 'pokemon_preview.freezed.dart';

@freezed
class PokemonPreview with _$PokemonPreview {
  const factory PokemonPreview({
    required String name,
    required String url,
  }) = _PokemonPreview;

  factory PokemonPreview.fromJson(Map<String, dynamic> json) =>
      _$PokemonPreviewFromJson(json);
}
