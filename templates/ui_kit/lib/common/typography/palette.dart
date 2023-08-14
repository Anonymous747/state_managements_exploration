import 'package:flutter/material.dart';

class Palette {
  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF000000);

  static const Color purple200 = Color(0xFFE1B1FF);
  static const Color purple300 = Color(0xFFE1B3D1);
  static const Color purple500 = Color(0xFF8153C7);
  static const Color purple700 = Color(0xFF602EA6);

  static const Color lblue500 = Color(0xFFe1e6fa);

  static const Color blue300 = Color(0xFFB9C8FF);
  static const Color blue500 = Color(0xFF2A4B9B);
  static const Color blue900 = Color(0xFF0B1531);

  static const Color grey300 = Color(0xFFC1C1C7);

  static const Color yellow = Color(0xFFE8DE29);

  static const Color red = Color(0xFFEC0D0D);

  static const Color green = Color(0xFF2BF547);
}

extension ColorConverterExtension on String {
  Color toColor() {
    return Palette.purple700;
  }
}
