import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_view_model.freezed.dart';

@freezed
class PokemonViewModel with _$PokemonViewModel {
  const factory PokemonViewModel({
    required String name,
    required String imageUrl,
    @Default(0) int? id,
    @Default([]) List<Ability> abilities,
    @Default([]) List<Stats> stats,
    String? color,
  }) = _PokemonViewModel;
}

extension TdoExtension on PokemonViewModel {
  PokemonDataTdo toTdo() {
    return PokemonDataTdo(
      name: name,
      imageUrl: imageUrl,
      stats: stats.toTdo(),
      abilities: abilities.toTdo(),
      id: id,
      color: color,
    );
  }
}
