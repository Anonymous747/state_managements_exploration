// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cell_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonCellState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PokemonViewModel viewModel) loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PokemonViewModel viewModel)? loaded,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PokemonViewModel viewModel)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonCellLoadingState value) loading,
    required TResult Function(_PokemonCellLoadedState value) loaded,
    required TResult Function(_PokemonCellErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonCellLoadingState value)? loading,
    TResult? Function(_PokemonCellLoadedState value)? loaded,
    TResult? Function(_PokemonCellErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonCellLoadingState value)? loading,
    TResult Function(_PokemonCellLoadedState value)? loaded,
    TResult Function(_PokemonCellErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCellStateCopyWith<$Res> {
  factory $PokemonCellStateCopyWith(
          PokemonCellState value, $Res Function(PokemonCellState) then) =
      _$PokemonCellStateCopyWithImpl<$Res, PokemonCellState>;
}

/// @nodoc
class _$PokemonCellStateCopyWithImpl<$Res, $Val extends PokemonCellState>
    implements $PokemonCellStateCopyWith<$Res> {
  _$PokemonCellStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PokemonCellLoadingStateCopyWith<$Res> {
  factory _$$PokemonCellLoadingStateCopyWith(_$PokemonCellLoadingState value,
          $Res Function(_$PokemonCellLoadingState) then) =
      __$$PokemonCellLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokemonCellLoadingStateCopyWithImpl<$Res>
    extends _$PokemonCellStateCopyWithImpl<$Res, _$PokemonCellLoadingState>
    implements _$$PokemonCellLoadingStateCopyWith<$Res> {
  __$$PokemonCellLoadingStateCopyWithImpl(_$PokemonCellLoadingState _value,
      $Res Function(_$PokemonCellLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PokemonCellLoadingState implements PokemonCellLoadingState {
  const _$PokemonCellLoadingState();

  @override
  String toString() {
    return 'PokemonCellState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCellLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PokemonViewModel viewModel) loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PokemonViewModel viewModel)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PokemonViewModel viewModel)? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(PokemonCellLoadingState value) loading,
    required TResult Function(_PokemonCellLoadedState value) loaded,
    required TResult Function(_PokemonCellErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonCellLoadingState value)? loading,
    TResult? Function(_PokemonCellLoadedState value)? loaded,
    TResult? Function(_PokemonCellErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonCellLoadingState value)? loading,
    TResult Function(_PokemonCellLoadedState value)? loaded,
    TResult Function(_PokemonCellErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PokemonCellLoadingState implements PokemonCellState {
  const factory PokemonCellLoadingState() = _$PokemonCellLoadingState;
}

/// @nodoc
abstract class _$$_PokemonCellLoadedStateCopyWith<$Res> {
  factory _$$_PokemonCellLoadedStateCopyWith(_$_PokemonCellLoadedState value,
          $Res Function(_$_PokemonCellLoadedState) then) =
      __$$_PokemonCellLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PokemonViewModel viewModel});

  $PokemonViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$_PokemonCellLoadedStateCopyWithImpl<$Res>
    extends _$PokemonCellStateCopyWithImpl<$Res, _$_PokemonCellLoadedState>
    implements _$$_PokemonCellLoadedStateCopyWith<$Res> {
  __$$_PokemonCellLoadedStateCopyWithImpl(_$_PokemonCellLoadedState _value,
      $Res Function(_$_PokemonCellLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$_PokemonCellLoadedState(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as PokemonViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonViewModelCopyWith<$Res> get viewModel {
    return $PokemonViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$_PokemonCellLoadedState implements _PokemonCellLoadedState {
  const _$_PokemonCellLoadedState({required this.viewModel});

  @override
  final PokemonViewModel viewModel;

  @override
  String toString() {
    return 'PokemonCellState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonCellLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCellLoadedStateCopyWith<_$_PokemonCellLoadedState> get copyWith =>
      __$$_PokemonCellLoadedStateCopyWithImpl<_$_PokemonCellLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PokemonViewModel viewModel) loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PokemonViewModel viewModel)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PokemonViewModel viewModel)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PokemonCellLoadingState value) loading,
    required TResult Function(_PokemonCellLoadedState value) loaded,
    required TResult Function(_PokemonCellErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonCellLoadingState value)? loading,
    TResult? Function(_PokemonCellLoadedState value)? loaded,
    TResult? Function(_PokemonCellErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonCellLoadingState value)? loading,
    TResult Function(_PokemonCellLoadedState value)? loaded,
    TResult Function(_PokemonCellErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PokemonCellLoadedState implements PokemonCellState {
  const factory _PokemonCellLoadedState(
      {required final PokemonViewModel viewModel}) = _$_PokemonCellLoadedState;

  PokemonViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$_PokemonCellLoadedStateCopyWith<_$_PokemonCellLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PokemonCellErrorStateCopyWith<$Res> {
  factory _$$_PokemonCellErrorStateCopyWith(_$_PokemonCellErrorState value,
          $Res Function(_$_PokemonCellErrorState) then) =
      __$$_PokemonCellErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_PokemonCellErrorStateCopyWithImpl<$Res>
    extends _$PokemonCellStateCopyWithImpl<$Res, _$_PokemonCellErrorState>
    implements _$$_PokemonCellErrorStateCopyWith<$Res> {
  __$$_PokemonCellErrorStateCopyWithImpl(_$_PokemonCellErrorState _value,
      $Res Function(_$_PokemonCellErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_PokemonCellErrorState(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PokemonCellErrorState implements _PokemonCellErrorState {
  const _$_PokemonCellErrorState({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PokemonCellState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonCellErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCellErrorStateCopyWith<_$_PokemonCellErrorState> get copyWith =>
      __$$_PokemonCellErrorStateCopyWithImpl<_$_PokemonCellErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PokemonViewModel viewModel) loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PokemonViewModel viewModel)? loaded,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PokemonViewModel viewModel)? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(PokemonCellLoadingState value) loading,
    required TResult Function(_PokemonCellLoadedState value) loaded,
    required TResult Function(_PokemonCellErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PokemonCellLoadingState value)? loading,
    TResult? Function(_PokemonCellLoadedState value)? loaded,
    TResult? Function(_PokemonCellErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PokemonCellLoadingState value)? loading,
    TResult Function(_PokemonCellLoadedState value)? loaded,
    TResult Function(_PokemonCellErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PokemonCellErrorState implements PokemonCellState {
  const factory _PokemonCellErrorState({required final String? message}) =
      _$_PokemonCellErrorState;

  String? get message;
  @JsonKey(ignore: true)
  _$$_PokemonCellErrorStateCopyWith<_$_PokemonCellErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
