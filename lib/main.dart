import 'package:flutter/material.dart';
import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/presentation/presentation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  runApp(const AppGate());
}
