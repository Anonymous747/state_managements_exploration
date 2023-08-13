import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';

class PokemonTextField extends StatelessWidget {
  final String hint;
  final Color backgroundColor;
  final double? borderRadius;

  const PokemonTextField({
    this.hint = '',
    this.backgroundColor = Palette.light,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      borderSide: const BorderSide(color: Palette.blue500),
    );

    return TextField(
      decoration: InputDecoration(
          border: border,
          enabledBorder: border,
          fillColor: Colors.white,
          filled: true,
          hintText: hint,
          focusColor: Colors.white,
          contentPadding: const EdgeInsets.only(top: 10, left: 16)),
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
