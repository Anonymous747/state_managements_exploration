import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AbilityCell extends StatelessWidget {
  final String ability;

  const AbilityCell({
    required this.ability,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Palette.purple300,
      ),
      child: Text(
        ability,
        textAlign: TextAlign.center,
        style: TextStyles.regularNormalStyle(color: Palette.light),
      ),
    );
  }
}
