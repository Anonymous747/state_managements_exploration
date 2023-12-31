// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonViewModel {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Ability> get abilities => throw _privateConstructorUsedError;
  List<Stats> get stats => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonViewModelCopyWith<PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonViewModelCopyWith<$Res> {
  factory $PokemonViewModelCopyWith(
          PokemonViewModel value, $Res Function(PokemonViewModel) then) =
      _$PokemonViewModelCopyWithImpl<$Res, PokemonViewModel>;
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      int? id,
      List<Ability> abilities,
      List<Stats> stats,
      String? color});
}

/// @nodoc
class _$PokemonViewModelCopyWithImpl<$Res, $Val extends PokemonViewModel>
    implements $PokemonViewModelCopyWith<$Res> {
  _$PokemonViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? id = freezed,
    Object? abilities = null,
    Object? stats = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonViewModelCopyWith<$Res>
    implements $PokemonViewModelCopyWith<$Res> {
  factory _$$_PokemonViewModelCopyWith(
          _$_PokemonViewModel value, $Res Function(_$_PokemonViewModel) then) =
      __$$_PokemonViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      int? id,
      List<Ability> abilities,
      List<Stats> stats,
      String? color});
}

/// @nodoc
class __$$_PokemonViewModelCopyWithImpl<$Res>
    extends _$PokemonViewModelCopyWithImpl<$Res, _$_PokemonViewModel>
    implements _$$_PokemonViewModelCopyWith<$Res> {
  __$$_PokemonViewModelCopyWithImpl(
      _$_PokemonViewModel _value, $Res Function(_$_PokemonViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? id = freezed,
    Object? abilities = null,
    Object? stats = null,
    Object? color = freezed,
  }) {
    return _then(_$_PokemonViewModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PokemonViewModel implements _PokemonViewModel {
  const _$_PokemonViewModel(
      {required this.name,
      required this.imageUrl,
      this.id = 0,
      final List<Ability> abilities = const [],
      final List<Stats> stats = const [],
      this.color})
      : _abilities = abilities,
        _stats = stats;

  @override
  final String name;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final int? id;
  final List<Ability> _abilities;
  @override
  @JsonKey()
  List<Ability> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<Stats> _stats;
  @override
  @JsonKey()
  List<Stats> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  final String? color;

  @override
  String toString() {
    return 'PokemonViewModel(name: $name, imageUrl: $imageUrl, id: $id, abilities: $abilities, stats: $stats, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonViewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      imageUrl,
      id,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_stats),
      color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonViewModelCopyWith<_$_PokemonViewModel> get copyWith =>
      __$$_PokemonViewModelCopyWithImpl<_$_PokemonViewModel>(this, _$identity);
}

abstract class _PokemonViewModel implements PokemonViewModel {
  const factory _PokemonViewModel(
      {required final String name,
      required final String imageUrl,
      final int? id,
      final List<Ability> abilities,
      final List<Stats> stats,
      final String? color}) = _$_PokemonViewModel;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  int? get id;
  @override
  List<Ability> get abilities;
  @override
  List<Stats> get stats;
  @override
  String? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonViewModelCopyWith<_$_PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
