import 'package:hive/hive.dart';
import 'package:ui_kit/domain/domain.dart';

part 'stats_tdo.g.dart';

@HiveType(typeId: 1)
class StatsTdo {
  StatsTdo({
    required this.effort,
    required this.stat,
  });

  @HiveField(0)
  int? effort;

  @HiveField(1)
  Ability? stat;
}
