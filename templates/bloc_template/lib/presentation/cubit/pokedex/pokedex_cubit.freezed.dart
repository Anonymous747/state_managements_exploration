// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokedexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<PokemonBaseViewModel> viewModels, bool isLoading)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexLoadedState value) loaded,
    required TResult Function(_PokedexErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexLoadedState value)? loaded,
    TResult? Function(_PokedexErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexLoadedState value)? loaded,
    TResult Function(_PokedexErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PokedexLoadingStateCopyWith<$Res> {
  factory _$$_PokedexLoadingStateCopyWith(_$_PokedexLoadingState value,
          $Res Function(_$_PokedexLoadingState) then) =
      __$$_PokedexLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PokedexLoadingStateCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$_PokedexLoadingState>
    implements _$$_PokedexLoadingStateCopyWith<$Res> {
  __$$_PokedexLoadingStateCopyWithImpl(_$_PokedexLoadingState _value,
      $Res Function(_$_PokedexLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PokedexLoadingState implements _PokedexLoadingState {
  const _$_PokedexLoadingState();

  @override
  String toString() {
    return 'PokedexState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PokedexLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<PokemonBaseViewModel> viewModels, bool isLoading)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexLoadedState value) loaded,
    required TResult Function(_PokedexErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexLoadedState value)? loaded,
    TResult? Function(_PokedexErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexLoadedState value)? loaded,
    TResult Function(_PokedexErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PokedexLoadingState implements PokedexState {
  const factory _PokedexLoadingState() = _$_PokedexLoadingState;
}

/// @nodoc
abstract class _$$_PokedexLoadedStateCopyWith<$Res> {
  factory _$$_PokedexLoadedStateCopyWith(_$_PokedexLoadedState value,
          $Res Function(_$_PokedexLoadedState) then) =
      __$$_PokedexLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PokemonBaseViewModel> viewModels, bool isLoading});
}

/// @nodoc
class __$$_PokedexLoadedStateCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$_PokedexLoadedState>
    implements _$$_PokedexLoadedStateCopyWith<$Res> {
  __$$_PokedexLoadedStateCopyWithImpl(
      _$_PokedexLoadedState _value, $Res Function(_$_PokedexLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModels = null,
    Object? isLoading = null,
  }) {
    return _then(_$_PokedexLoadedState(
      viewModels: null == viewModels
          ? _value._viewModels
          : viewModels // ignore: cast_nullable_to_non_nullable
              as List<PokemonBaseViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PokedexLoadedState implements _PokedexLoadedState {
  const _$_PokedexLoadedState(
      {required final List<PokemonBaseViewModel> viewModels,
      this.isLoading = false})
      : _viewModels = viewModels;

  final List<PokemonBaseViewModel> _viewModels;
  @override
  List<PokemonBaseViewModel> get viewModels {
    if (_viewModels is EqualUnmodifiableListView) return _viewModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewModels);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PokedexState.loaded(viewModels: $viewModels, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokedexLoadedState &&
            const DeepCollectionEquality()
                .equals(other._viewModels, _viewModels) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_viewModels), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokedexLoadedStateCopyWith<_$_PokedexLoadedState> get copyWith =>
      __$$_PokedexLoadedStateCopyWithImpl<_$_PokedexLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<PokemonBaseViewModel> viewModels, bool isLoading)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(viewModels, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(viewModels, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModels, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexLoadedState value) loaded,
    required TResult Function(_PokedexErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexLoadedState value)? loaded,
    TResult? Function(_PokedexErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexLoadedState value)? loaded,
    TResult Function(_PokedexErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PokedexLoadedState implements PokedexState {
  const factory _PokedexLoadedState(
      {required final List<PokemonBaseViewModel> viewModels,
      final bool isLoading}) = _$_PokedexLoadedState;

  List<PokemonBaseViewModel> get viewModels;
  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_PokedexLoadedStateCopyWith<_$_PokedexLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PokedexErrorStateCopyWith<$Res> {
  factory _$$_PokedexErrorStateCopyWith(_$_PokedexErrorState value,
          $Res Function(_$_PokedexErrorState) then) =
      __$$_PokedexErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PokedexErrorStateCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$_PokedexErrorState>
    implements _$$_PokedexErrorStateCopyWith<$Res> {
  __$$_PokedexErrorStateCopyWithImpl(
      _$_PokedexErrorState _value, $Res Function(_$_PokedexErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PokedexErrorState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PokedexErrorState implements _PokedexErrorState {
  const _$_PokedexErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PokedexState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokedexErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokedexErrorStateCopyWith<_$_PokedexErrorState> get copyWith =>
      __$$_PokedexErrorStateCopyWithImpl<_$_PokedexErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<PokemonBaseViewModel> viewModels, bool isLoading)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PokemonBaseViewModel> viewModels, bool isLoading)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexLoadedState value) loaded,
    required TResult Function(_PokedexErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexLoadedState value)? loaded,
    TResult? Function(_PokedexErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexLoadedState value)? loaded,
    TResult Function(_PokedexErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PokedexErrorState implements PokedexState {
  const factory _PokedexErrorState({required final String message}) =
      _$_PokedexErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$_PokedexErrorStateCopyWith<_$_PokedexErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
