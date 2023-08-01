import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class FlatButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsets padding;
  final VoidCallback onTap;
  final String? text;
  final double? maxHeight;
  final double? maxWidth;

  const FlatButton({
    required this.child,
    required this.onTap,
    this.backgroundColor = Palette.blue900,
    this.padding = const EdgeInsets.all(8),
    this.borderRadius = 8,
    this.text,
    this.maxHeight,
    this.maxWidth,
    Key? key,
  }) : super(key: key);

  factory FlatButton.text({
    required String text,
    required VoidCallback onTap,
    Color backgroundColor = Palette.purple200,
    EdgeInsets padding = const EdgeInsets.all(8),
    double borderRadius = 8,
    TextStyle? style,
    double? maxHeight,
    double? maxWidth,
  }) {
    return FlatButton(
      onTap: onTap,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      padding: padding,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: style ?? TextStyles.regularNormalStyle(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints.tightFor(
          width: maxWidth,
          height: maxHeight,
        ),
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: child,
      ),
    );
  }
}
