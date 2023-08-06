import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';

class PokemonCell extends StatelessWidget {
  const PokemonCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Palette.purple300,
    );
  }
}
