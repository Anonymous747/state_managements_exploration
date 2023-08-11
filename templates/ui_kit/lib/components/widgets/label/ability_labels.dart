import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class AbilityLabels extends StatelessWidget {
  final List<Ability?> abilities;

  const AbilityLabels({
    required this.abilities,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: abilities
          .map<Widget>((ability) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: AbilityCell(ability: ability?.name ?? ''),
                ),
              ))
          .toList(),
    );
  }
}
