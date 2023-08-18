import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';
import 'package:redux_template/redux_template.dart';

import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/presentation/presentation.dart';

class AppGate extends StatelessWidget {
  const AppGate({super.key});

  @override
  Widget build(BuildContext context) {
    // This's required to initialize the redux
    //
    return ReduxInitializerWrapper(
      child: MaterialApp(
        navigatorKey: navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: appRoutes,
        initialRoute: SelectManagementScreen.routeName,
        onGenerateRoute: (route) {
          // In this project, I almost simplify navigation,
          // cuz makes it usable inside modules is a real challenge.
          //
          if (appRoutes[route.name] == null) return null;

          final routeName = route.name;
          final args = route.arguments;

          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => appRoutes[routeName]!(context),
            settings: RouteSettings(arguments: args),
          );
        },
      ),
    );
  }
}
