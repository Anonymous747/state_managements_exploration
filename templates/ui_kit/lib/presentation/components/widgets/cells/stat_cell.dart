import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';

const double _cellHeight = 24;

class StatCell extends StatefulWidget {
  final double maxWeight;
  final String name;
  final int? weight;
  final Color cellColor;
  final int millisecondsDelay;

  const StatCell({
    required this.maxWeight,
    required this.name,
    this.weight = 0,
    this.cellColor = Palette.purple300,
    this.millisecondsDelay = 0,
    Key? key,
  }) : super(key: key);

  @override
  State<StatCell> createState() => _StatCellState();
}

class _StatCellState extends State<StatCell>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  final _progress = ValueNotifier<double>(0);

  void _progressListener() {
    _progress.value = _controller.value;
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _animation.addListener(_progressListener);

    Future.delayed(
      Duration(milliseconds: widget.millisecondsDelay),
      _controller.forward,
    );
  }

  @override
  void dispose() {
    _animation.removeListener(_progressListener);
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formattedName =
        widget.name[0].toUpperCase() + widget.name.substring(1);

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Palette.grey300, borderRadius: BorderRadius.circular(12)),
          height: _cellHeight,
        ),
        LayoutBuilder(builder: (context, constraints) {
          final width = constraints.maxWidth;

          return ValueListenableBuilder(
              valueListenable: _progress,
              builder: (context, progress, child) {
                final labelWidth = width * widget.maxWeight * progress;
                final points = ((widget.weight ?? 0) * progress).round();

                final isAbilityNameDisplayed = _animation.value > 0.6;
                final isPointsDisplayed = _animation.value > 0.4;

                return Container(
                  height: _cellHeight,
                  width: labelWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: widget.cellColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      if (isAbilityNameDisplayed)
                        Expanded(
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 500),
                            opacity: isAbilityNameDisplayed ? 1 : 0,
                            child: Text(
                              formattedName,
                              style: TextStyles.regularNormalStyle(
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      if (isPointsDisplayed)
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: isPointsDisplayed ? 1 : 0,
                          child: Text(
                            '$points',
                          ),
                        ),
                    ],
                  ),
                );
              });
        }),
      ],
    );
  }
}
