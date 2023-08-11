import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

const _baseStatsText = "Base stats";

class PokemonStats extends StatelessWidget {
  const PokemonStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _baseStatsText,
          style: TextStyles.regularHugeStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
