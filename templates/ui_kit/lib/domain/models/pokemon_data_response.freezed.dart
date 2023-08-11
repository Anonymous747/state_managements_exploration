// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDataResponse _$PokemonDataResponseFromJson(Map<String, dynamic> json) {
  return _PokemonDataResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonDataResponse {
  Sprites? get sprites => throw _privateConstructorUsedError;
  List<Abilities>? get abilities => throw _privateConstructorUsedError;
  List<Stats>? get stats => throw _privateConstructorUsedError;
  List<Types>? get types => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int? get baseExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool? get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataResponseCopyWith<PokemonDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataResponseCopyWith<$Res> {
  factory $PokemonDataResponseCopyWith(
          PokemonDataResponse value, $Res Function(PokemonDataResponse) then) =
      _$PokemonDataResponseCopyWithImpl<$Res, PokemonDataResponse>;
  @useResult
  $Res call(
      {Sprites? sprites,
      List<Abilities>? abilities,
      List<Stats>? stats,
      List<Types>? types,
      int? id,
      int? order,
      int? height,
      int? weight,
      String? name,
      @JsonKey(name: 'base_experience') int? baseExperience,
      @JsonKey(name: 'is_default') bool? isDefault});

  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class _$PokemonDataResponseCopyWithImpl<$Res, $Val extends PokemonDataResponse>
    implements $PokemonDataResponseCopyWith<$Res> {
  _$PokemonDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? abilities = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? id = freezed,
    Object? order = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? baseExperience = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesCopyWith<$Res>? get sprites {
    if (_value.sprites == null) {
      return null;
    }

    return $SpritesCopyWith<$Res>(_value.sprites!, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokemonDataResponseCopyWith<$Res>
    implements $PokemonDataResponseCopyWith<$Res> {
  factory _$$_PokemonDataResponseCopyWith(_$_PokemonDataResponse value,
          $Res Function(_$_PokemonDataResponse) then) =
      __$$_PokemonDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sprites? sprites,
      List<Abilities>? abilities,
      List<Stats>? stats,
      List<Types>? types,
      int? id,
      int? order,
      int? height,
      int? weight,
      String? name,
      @JsonKey(name: 'base_experience') int? baseExperience,
      @JsonKey(name: 'is_default') bool? isDefault});

  @override
  $SpritesCopyWith<$Res>? get sprites;
}

/// @nodoc
class __$$_PokemonDataResponseCopyWithImpl<$Res>
    extends _$PokemonDataResponseCopyWithImpl<$Res, _$_PokemonDataResponse>
    implements _$$_PokemonDataResponseCopyWith<$Res> {
  __$$_PokemonDataResponseCopyWithImpl(_$_PokemonDataResponse _value,
      $Res Function(_$_PokemonDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sprites = freezed,
    Object? abilities = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? id = freezed,
    Object? order = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? baseExperience = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_$_PokemonDataResponse(
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Sprites?,
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Abilities>?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stats>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Types>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDataResponse implements _PokemonDataResponse {
  const _$_PokemonDataResponse(
      {this.sprites,
      final List<Abilities>? abilities,
      final List<Stats>? stats,
      final List<Types>? types,
      this.id,
      this.order,
      this.height,
      this.weight,
      this.name,
      @JsonKey(name: 'base_experience') this.baseExperience,
      @JsonKey(name: 'is_default') this.isDefault})
      : _abilities = abilities,
        _stats = stats,
        _types = types;

  factory _$_PokemonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDataResponseFromJson(json);

  @override
  final Sprites? sprites;
  final List<Abilities>? _abilities;
  @override
  List<Abilities>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Stats>? _stats;
  @override
  List<Stats>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Types>? _types;
  @override
  List<Types>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  @override
  final int? order;
  @override
  final int? height;
  @override
  final int? weight;
  @override
  final String? name;
  @override
  @JsonKey(name: 'base_experience')
  final int? baseExperience;
  @override
  @JsonKey(name: 'is_default')
  final bool? isDefault;

  @override
  String toString() {
    return 'PokemonDataResponse(sprites: $sprites, abilities: $abilities, stats: $stats, types: $types, id: $id, order: $order, height: $height, weight: $weight, name: $name, baseExperience: $baseExperience, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDataResponse &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sprites,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      id,
      order,
      height,
      weight,
      name,
      baseExperience,
      isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDataResponseCopyWith<_$_PokemonDataResponse> get copyWith =>
      __$$_PokemonDataResponseCopyWithImpl<_$_PokemonDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDataResponseToJson(
      this,
    );
  }
}

abstract class _PokemonDataResponse implements PokemonDataResponse {
  const factory _PokemonDataResponse(
          {final Sprites? sprites,
          final List<Abilities>? abilities,
          final List<Stats>? stats,
          final List<Types>? types,
          final int? id,
          final int? order,
          final int? height,
          final int? weight,
          final String? name,
          @JsonKey(name: 'base_experience') final int? baseExperience,
          @JsonKey(name: 'is_default') final bool? isDefault}) =
      _$_PokemonDataResponse;

  factory _PokemonDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonDataResponse.fromJson;

  @override
  Sprites? get sprites;
  @override
  List<Abilities>? get abilities;
  @override
  List<Stats>? get stats;
  @override
  List<Types>? get types;
  @override
  int? get id;
  @override
  int? get order;
  @override
  int? get height;
  @override
  int? get weight;
  @override
  String? get name;
  @override
  @JsonKey(name: 'base_experience')
  int? get baseExperience;
  @override
  @JsonKey(name: 'is_default')
  bool? get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDataResponseCopyWith<_$_PokemonDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
