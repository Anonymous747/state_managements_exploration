// import 'package:flutter/cupertino.dart';
//
// final navigatorKey = GlobalKey<NavigatorState>();
//
// void pushNamed(String routeName, {dynamic arguments}) {
//   navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
// }
//
// /// In case lack of [routeUntil] the entire route up to [routeName] will be deleted
// ///
// void pushNamedAndCleanAllUntil(String routeName, {String routeUntil = ''}) {
//   navigatorKey.currentState!.pushNamedAndRemoveUntil(
//       routeName, (route) => routeUntil == route.settings.name);
// }
