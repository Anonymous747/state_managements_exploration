import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_view_model.g.dart';
part 'pokemon_view_model.freezed.dart';

@freezed
class PokemonViewModel with _$PokemonViewModel {
  const factory PokemonViewModel({
    required String name,
    String? pictureUrl,
  }) = _PokemonViewModel;

  factory PokemonViewModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonViewModelFromJson(json);
}
