import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/domain.dart';
import 'package:ui_kit/ui_kit.dart';

part 'stats.g.dart';
part 'stats.freezed.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    @JsonKey(name: 'base_stat') int? baseStat,
    int? effort,
    Ability? stat,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

extension TdoStats on List<Stats>? {
  List<StatsTdo>? toTdo() => this
      ?.map(
        (stat) => StatsTdo(
          effort: stat.effort,
          stat: stat.stat.toTdo(),
          baseStat: stat.baseStat,
        ),
      )
      .toList();
}
