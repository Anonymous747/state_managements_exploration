import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:collection/collection.dart';

const _baseStatsText = "Base stats:";
const _emptyStatsText = "Pokemons stats are empty";

const int _delayedStep = 100;

const _statColors = [
  Palette.yellow,
  Palette.red,
  Palette.blue300,
  Palette.purple500,
  Palette.purple300,
  Palette.green,
];

class PokemonStats extends StatelessWidget {
  final List<Stats>? stats;

  const PokemonStats({
    required this.stats,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (stats == null || stats!.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          _emptyStatsText,
          style: TextStyles.regularNormalStyle(),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            _baseStatsText,
            style: TextStyles.regularHugeStyle(fontWeight: FontWeight.w600),
          ),
        ),
        VerticalSeparatedList(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          distanceBetween: 10,
          widgets: stats!.mapIndexed((index, stat) {
            return StatCell(
              name: stat.stat?.name ?? '',
              maxWeight: _maxProgressWeight(stats, stat.baseStat),
              weight: stat.baseStat,
              cellColor: _statColors[index],
              millisecondsDelay: index * _delayedStep,
            );
          }).toList(),
        ),
      ],
    );
  }

  int _maxStatsCalculator(List<Stats> stats) {
    return stats.fold<int>(0, (previousValue, stat) {
      final baseStat = stat.baseStat!;

      return baseStat > previousValue ? baseStat : previousValue;
    });
  }

  double _maxProgressWeight(List<Stats>? stats, int? stat) {
    if (stats == null || stats.isEmpty) {
      return 0;
    }

    return stat! / _maxStatsCalculator(stats);
  }
}
