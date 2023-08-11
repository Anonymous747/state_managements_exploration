import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokemon_view_model.freezed.dart';

@freezed
class PokemonViewModel with _$PokemonViewModel {
  const factory PokemonViewModel({
    required String name,
    required String imageUrl,
    @Default(0) int? id,
    @Default([]) List<Ability?> abilities,
    @Default(Palette.blue900) Color color,
  }) = _PokemonViewModel;
}
