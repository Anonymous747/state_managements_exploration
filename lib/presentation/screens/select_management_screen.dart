import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:riverpod_template/riverpod_template.dart' as riverpod;
import 'package:mobx_template/mobx_template.dart' as mobx;
import 'package:redux_template/redux_template.dart' as redux;
import 'package:bloc_template/bloc_template.dart' as bloc;

class SelectManagementScreen extends StatelessWidget {
  static const routeName = "/select_management";

  const SelectManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final managementsMap = <String, VoidCallback>{
      'Provider': () {},
      'Riverpod': () => pushNamed(riverpod.PokedexScreen.route_name),
      'MobX': () => pushNamed(mobx.PokedexScreen.route_name),
      'Redux': () => pushNamed(redux.PokedexScreen.route_name),
      'Bloc': () => pushNamed(bloc.PokedexScreen.route_name),
    };

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.chooseManagementText,
              style: TextStyles.regularCustomSizeStyle(
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            VerticalSeparatedList(
              distanceBetween: 20,
              widgets: managementsMap.keys.map<Widget>((name) {
                final action = managementsMap[name]!;

                return FlatButton.text(
                  text: name,
                  maxWidth: 200,
                  style: TextStyles.regularNormalStyle(
                      fontWeight: FontWeight.w500),
                  onTap: action,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
