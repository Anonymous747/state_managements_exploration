import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class VerticalSeparatedList extends StatelessWidget {
  final List<Widget> widgets;
  final double distanceBetween;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const VerticalSeparatedList({
    required this.widgets,
    this.distanceBetween = 10,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        children: widgets.foldIndexed(<Widget>[], (index, children, nextChild) {
          children.add(nextChild);
          if (index != widgets.length - 1) {
            children.add(SizedBox(height: distanceBetween));
          }

          return children;
        }));
  }
}
