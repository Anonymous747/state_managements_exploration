import 'package:flutter/material.dart';
import 'package:riverpod_template/presentation/component/index.dart';
import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/presentation/presentation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();

  runApp(
    // This's required to initialize the riverpod
    //
    const RiverpodInitialization(
      child: AppGate(),
    ),
  );
}
