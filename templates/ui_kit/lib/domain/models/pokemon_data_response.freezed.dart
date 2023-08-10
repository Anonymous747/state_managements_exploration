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
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  PokemonSprites get sprites => throw _privateConstructorUsedError;

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
  $Res call({String name, int order, PokemonSprites sprites});

  $PokemonSpritesCopyWith<$Res> get sprites;
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
    Object? name = null,
    Object? order = null,
    Object? sprites = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesCopyWith<$Res> get sprites {
    return $PokemonSpritesCopyWith<$Res>(_value.sprites, (value) {
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
  $Res call({String name, int order, PokemonSprites sprites});

  @override
  $PokemonSpritesCopyWith<$Res> get sprites;
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
    Object? name = null,
    Object? order = null,
    Object? sprites = null,
  }) {
    return _then(_$_PokemonDataResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSprites,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDataResponse implements _PokemonDataResponse {
  const _$_PokemonDataResponse(
      {required this.name, required this.order, required this.sprites});

  factory _$_PokemonDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDataResponseFromJson(json);

  @override
  final String name;
  @override
  final int order;
  @override
  final PokemonSprites sprites;

  @override
  String toString() {
    return 'PokemonDataResponse(name: $name, order: $order, sprites: $sprites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDataResponse &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, order, sprites);

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
      {required final String name,
      required final int order,
      required final PokemonSprites sprites}) = _$_PokemonDataResponse;

  factory _PokemonDataResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonDataResponse.fromJson;

  @override
  String get name;
  @override
  int get order;
  @override
  PokemonSprites get sprites;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDataResponseCopyWith<_$_PokemonDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
