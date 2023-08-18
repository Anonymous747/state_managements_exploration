// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokedexState {
  List<PokemonBaseViewModel> get viewModels =>
      throw _privateConstructorUsedError;
  List<PokemonBaseViewModel> get suitableForSearch =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokedexStateCopyWith<PokedexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
  @useResult
  $Res call(
      {List<PokemonBaseViewModel> viewModels,
      List<PokemonBaseViewModel> suitableForSearch,
      bool isLoading,
      bool isLoadMore,
      String? errorMessage});
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModels = null,
    Object? suitableForSearch = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      viewModels: null == viewModels
          ? _value.viewModels
          : viewModels // ignore: cast_nullable_to_non_nullable
              as List<PokemonBaseViewModel>,
      suitableForSearch: null == suitableForSearch
          ? _value.suitableForSearch
          : suitableForSearch // ignore: cast_nullable_to_non_nullable
              as List<PokemonBaseViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokedexLoadedStateCopyWith<$Res>
    implements $PokedexStateCopyWith<$Res> {
  factory _$$_PokedexLoadedStateCopyWith(_$_PokedexLoadedState value,
          $Res Function(_$_PokedexLoadedState) then) =
      __$$_PokedexLoadedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonBaseViewModel> viewModels,
      List<PokemonBaseViewModel> suitableForSearch,
      bool isLoading,
      bool isLoadMore,
      String? errorMessage});
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
    Object? suitableForSearch = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PokedexLoadedState(
      viewModels: null == viewModels
          ? _value._viewModels
          : viewModels // ignore: cast_nullable_to_non_nullable
              as List<PokemonBaseViewModel>,
      suitableForSearch: null == suitableForSearch
          ? _value._suitableForSearch
          : suitableForSearch // ignore: cast_nullable_to_non_nullable
              as List<PokemonBaseViewModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PokedexLoadedState implements _PokedexLoadedState {
  _$_PokedexLoadedState(
      {final List<PokemonBaseViewModel> viewModels = const [],
      final List<PokemonBaseViewModel> suitableForSearch = const [],
      this.isLoading = true,
      this.isLoadMore = false,
      this.errorMessage})
      : _viewModels = viewModels,
        _suitableForSearch = suitableForSearch;

  final List<PokemonBaseViewModel> _viewModels;
  @override
  @JsonKey()
  List<PokemonBaseViewModel> get viewModels {
    if (_viewModels is EqualUnmodifiableListView) return _viewModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viewModels);
  }

  final List<PokemonBaseViewModel> _suitableForSearch;
  @override
  @JsonKey()
  List<PokemonBaseViewModel> get suitableForSearch {
    if (_suitableForSearch is EqualUnmodifiableListView)
      return _suitableForSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suitableForSearch);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PokedexState(viewModels: $viewModels, suitableForSearch: $suitableForSearch, isLoading: $isLoading, isLoadMore: $isLoadMore, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokedexLoadedState &&
            const DeepCollectionEquality()
                .equals(other._viewModels, _viewModels) &&
            const DeepCollectionEquality()
                .equals(other._suitableForSearch, _suitableForSearch) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_viewModels),
      const DeepCollectionEquality().hash(_suitableForSearch),
      isLoading,
      isLoadMore,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokedexLoadedStateCopyWith<_$_PokedexLoadedState> get copyWith =>
      __$$_PokedexLoadedStateCopyWithImpl<_$_PokedexLoadedState>(
          this, _$identity);
}

abstract class _PokedexLoadedState implements PokedexState {
  factory _PokedexLoadedState(
      {final List<PokemonBaseViewModel> viewModels,
      final List<PokemonBaseViewModel> suitableForSearch,
      final bool isLoading,
      final bool isLoadMore,
      final String? errorMessage}) = _$_PokedexLoadedState;

  @override
  List<PokemonBaseViewModel> get viewModels;
  @override
  List<PokemonBaseViewModel> get suitableForSearch;
  @override
  bool get isLoading;
  @override
  bool get isLoadMore;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PokedexLoadedStateCopyWith<_$_PokedexLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
