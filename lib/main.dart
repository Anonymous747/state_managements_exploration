import 'package:flutter/material.dart';
import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();

  runApp(const AppGate());
}
