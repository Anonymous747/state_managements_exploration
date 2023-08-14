import 'package:hive/hive.dart';
import 'package:ui_kit/data/data.dart';
import 'package:ui_kit/domain/domain.dart';

part 'stats_tdo.g.dart';

@HiveType(typeId: 1)
class StatsTdo {
  StatsTdo({
    required this.effort,
    required this.stat,
    required this.baseStat,
  });

  @HiveField(0)
  int? effort;

  @HiveField(1)
  int? baseStat;

  @HiveField(2)
  AbilityTdo? stat;
}

extension TdoStatsExtension on List<StatsTdo>? {
  List<Stats> toModel() {
    return this
            ?.map((stat) => Stats(
                  baseStat: stat.baseStat,
                  effort: stat.effort,
                  stat: stat.stat.toModel(),
                ))
            .toList() ??
        [];
  }
}
