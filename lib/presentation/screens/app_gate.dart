import 'package:flutter/material.dart';
import 'package:redux_template/redux_template.dart';
import 'package:state_managements_exploration/common/common.dart';
import 'package:state_managements_exploration/presentation/screens/index.dart';

class AppGate extends StatelessWidget {
  const AppGate({super.key});

  @override
  Widget build(BuildContext context) {
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
