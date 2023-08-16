import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:flutter/material.dart';
import 'package:redux_template/presentation/presentation.dart';

class ReduxInitializerWrapper extends StatelessWidget {
  final Widget child;

  const ReduxInitializerWrapper({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
      appReducer,
      initialState: AppState.initial(),
      middleware: [thunkMiddleware],
    );

    return StoreProvider<AppState>(
      store: store,
      child: child,
    );
  }
}
