import 'package:flutter/material.dart';

/// Use to avoid importing the same typedef
/// from UI dependencies
///
typedef VoidCallback = void Function();

/// Use it to provide widget building with actual context
///
typedef WidgetBuilder = Widget Function(BuildContext);
