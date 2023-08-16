// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_cell_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonCellState {
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, PokemonViewModel?> get viewModels =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading,
            Map<String, PokemonViewModel?> viewModels, String? errorMessage)
        load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, PokemonViewModel?> viewModels,
            String? errorMessage)?
        load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, PokemonViewModel?> viewModels,
            String? errorMessage)?
        load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokemonCellState value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokemonCellState value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokemonCellState value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCellStateCopyWith<PokemonCellState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCellStateCopyWith<$Res> {
  factory $PokemonCellStateCopyWith(
          PokemonCellState value, $Res Function(PokemonCellState) then) =
      _$PokemonCellStateCopyWithImpl<$Res, PokemonCellState>;
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, PokemonViewModel?> viewModels,
      String? errorMessage});
}

/// @nodoc
class _$PokemonCellStateCopyWithImpl<$Res, $Val extends PokemonCellState>
    implements $PokemonCellStateCopyWith<$Res> {
  _$PokemonCellStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? viewModels = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewModels: null == viewModels
          ? _value.viewModels
          : viewModels // ignore: cast_nullable_to_non_nullable
              as Map<String, PokemonViewModel?>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonCellStateCopyWith<$Res>
    implements $PokemonCellStateCopyWith<$Res> {
  factory _$$_PokemonCellStateCopyWith(
          _$_PokemonCellState value, $Res Function(_$_PokemonCellState) then) =
      __$$_PokemonCellStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, PokemonViewModel?> viewModels,
      String? errorMessage});
}

/// @nodoc
class __$$_PokemonCellStateCopyWithImpl<$Res>
    extends _$PokemonCellStateCopyWithImpl<$Res, _$_PokemonCellState>
    implements _$$_PokemonCellStateCopyWith<$Res> {
  __$$_PokemonCellStateCopyWithImpl(
      _$_PokemonCellState _value, $Res Function(_$_PokemonCellState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? viewModels = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PokemonCellState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewModels: null == viewModels
          ? _value._viewModels
          : viewModels // ignore: cast_nullable_to_non_nullable
              as Map<String, PokemonViewModel?>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PokemonCellState implements _PokemonCellState {
  _$_PokemonCellState(
      {this.isLoading = true,
      final Map<String, PokemonViewModel?> viewModels = const {},
      this.errorMessage})
      : _viewModels = viewModels;

  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, PokemonViewModel?> _viewModels;
  @override
  @JsonKey()
  Map<String, PokemonViewModel?> get viewModels {
    if (_viewModels is EqualUnmodifiableMapView) return _viewModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_viewModels);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokemonCellState.load(isLoading: $isLoading, viewModels: $viewModels, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonCellState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._viewModels, _viewModels) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_viewModels), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCellStateCopyWith<_$_PokemonCellState> get copyWith =>
      __$$_PokemonCellStateCopyWithImpl<_$_PokemonCellState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading,
            Map<String, PokemonViewModel?> viewModels, String? errorMessage)
        load,
  }) {
    return load(isLoading, viewModels, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, PokemonViewModel?> viewModels,
            String? errorMessage)?
        load,
  }) {
    return load?.call(isLoading, viewModels, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, PokemonViewModel?> viewModels,
            String? errorMessage)?
        load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(isLoading, viewModels, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PokemonCellState value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PokemonCellState value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PokemonCellState value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _PokemonCellState implements PokemonCellState {
  factory _PokemonCellState(
      {final bool isLoading,
      final Map<String, PokemonViewModel?> viewModels,
      final String? errorMessage}) = _$_PokemonCellState;

  @override
  bool get isLoading;
  @override
  Map<String, PokemonViewModel?> get viewModels;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCellStateCopyWith<_$_PokemonCellState> get copyWith =>
      throw _privateConstructorUsedError;
}
