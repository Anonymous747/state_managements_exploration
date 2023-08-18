import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodInitialization extends StatelessWidget {
  final Widget child;

  const RiverpodInitialization({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: child);
  }
}
