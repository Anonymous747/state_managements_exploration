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
  PokemonViewModel? get viewModel => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
      {bool isLoading, PokemonViewModel? viewModel, String? errorMessage});

  $PokemonViewModelCopyWith<$Res>? get viewModel;
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
    Object? viewModel = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewModel: freezed == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as PokemonViewModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonViewModelCopyWith<$Res>? get viewModel {
    if (_value.viewModel == null) {
      return null;
    }

    return $PokemonViewModelCopyWith<$Res>(_value.viewModel!, (value) {
      return _then(_value.copyWith(viewModel: value) as $Val);
    });
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
      {bool isLoading, PokemonViewModel? viewModel, String? errorMessage});

  @override
  $PokemonViewModelCopyWith<$Res>? get viewModel;
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
    Object? viewModel = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PokemonCellState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      viewModel: freezed == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as PokemonViewModel?,
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
      {this.isLoading = true, this.viewModel, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PokemonViewModel? viewModel;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokemonCellState(isLoading: $isLoading, viewModel: $viewModel, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonCellState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, viewModel, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCellStateCopyWith<_$_PokemonCellState> get copyWith =>
      __$$_PokemonCellStateCopyWithImpl<_$_PokemonCellState>(this, _$identity);
}

abstract class _PokemonCellState implements PokemonCellState {
  factory _PokemonCellState(
      {final bool isLoading,
      final PokemonViewModel? viewModel,
      final String? errorMessage}) = _$_PokemonCellState;

  @override
  bool get isLoading;
  @override
  PokemonViewModel? get viewModel;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCellStateCopyWith<_$_PokemonCellState> get copyWith =>
      throw _privateConstructorUsedError;
}
