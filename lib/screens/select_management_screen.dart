import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SelectManagementScreen extends StatelessWidget {
  const SelectManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Выберите систему управления состоянием',
                style: TextStyles.regularCustomSizeStyle(
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              FlatButton.text(
                text: 'Provider',
                maxWidth: 200,
                style:
                    TextStyles.regularNormalStyle(fontWeight: FontWeight.w500),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              FlatButton.text(
                text: 'Riverpod',
                maxWidth: 200,
                style:
                    TextStyles.regularNormalStyle(fontWeight: FontWeight.w500),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              FlatButton.text(
                text: 'MobX',
                maxWidth: 200,
                style:
                    TextStyles.regularNormalStyle(fontWeight: FontWeight.w500),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              FlatButton.text(
                text: 'Redux',
                maxWidth: 200,
                style:
                    TextStyles.regularNormalStyle(fontWeight: FontWeight.w500),
                onTap: () {},
              ),
              const SizedBox(height: 20),
              FlatButton.text(
                text: 'Bloc',
                maxWidth: 200,
                style:
                    TextStyles.regularNormalStyle(fontWeight: FontWeight.w500),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
