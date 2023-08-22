import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_base_view_model.freezed.dart';

@freezed
class PokemonBaseViewModel with _$PokemonBaseViewModel {
  const factory PokemonBaseViewModel({
    required String name,
    required String imageUrl,
  }) = _PokemonBaseViewModel;
}
