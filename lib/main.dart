import 'package:flutter/material.dart';
import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/presentation/presentation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();

  runApp(const AppGate());
}
