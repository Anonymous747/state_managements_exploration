import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BlocExtension on BuildContext {
  T bloc<T extends BlocBase<Object?>>() => BlocProvider.of<T>(this);
}

extension BlocProviderExtension on Widget {
  Widget createWithProvider<T extends BlocBase<Object?>>(
    T Function(BuildContext context) createBloc, {
    bool lazy = false,
    Key? key,
  }) {
    return BlocProvider<T>(
      create: createBloc,
      key: key,
      lazy: lazy,
      child: this,
    );
  }
}

extension BlocMultyProviderExtension on Widget {
  Widget createWithMultiProvider(
    List<BlocProvider> blocProviders, {
    bool lazy = false,
    Key? key,
  }) {
    return MultiBlocProvider(
      providers: blocProviders,
      key: key,
      child: this,
    );
  }
}
