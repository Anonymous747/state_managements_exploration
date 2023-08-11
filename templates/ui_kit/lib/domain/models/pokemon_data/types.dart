import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';

part 'types.g.dart';
part 'types.freezed.dart';

@freezed
class Types with _$Types {
  const factory Types({
    required int slot,
    required Ability? type,
  }) = _Types;

  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);
}
