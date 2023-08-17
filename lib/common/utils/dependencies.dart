import 'package:bloc_template/bloc_template.dart';
import 'package:mobx_template/mobx_template.dart';
import 'package:ui_kit/ui_kit.dart';

Future<void> initDependencies() async {
  await initUIKitDependencies();
  initBlocDependencies();
  initMobXDependencies();
}
