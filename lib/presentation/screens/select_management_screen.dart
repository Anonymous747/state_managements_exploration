import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:provider_template/provider_template.dart' as provider;
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
      'Provider': () => pushNamed(provider.PokedexScreen.routeName),
      'Riverpod': () => pushNamed(riverpod.PokedexScreen.routeName),
      'MobX': () => pushNamed(mobx.PokedexScreen.routeName),
      'Redux': () => pushNamed(redux.PokedexScreen.routeName),
      'Bloc': () => pushNamed(bloc.PokedexScreen.routeName),
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
