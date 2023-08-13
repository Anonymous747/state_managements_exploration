// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDataRequest _$PokemonDataRequestFromJson(Map<String, dynamic> json) {
  return _PokemonDataRequest.fromJson(json);
}

/// @nodoc
mixin _$PokemonDataRequest {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataRequestCopyWith<PokemonDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataRequestCopyWith<$Res> {
  factory $PokemonDataRequestCopyWith(
          PokemonDataRequest value, $Res Function(PokemonDataRequest) then) =
      _$PokemonDataRequestCopyWithImpl<$Res, PokemonDataRequest>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class _$PokemonDataRequestCopyWithImpl<$Res, $Val extends PokemonDataRequest>
    implements $PokemonDataRequestCopyWith<$Res> {
  _$PokemonDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonDataRequestCopyWith<$Res>
    implements $PokemonDataRequestCopyWith<$Res> {
  factory _$$_PokemonDataRequestCopyWith(_$_PokemonDataRequest value,
          $Res Function(_$_PokemonDataRequest) then) =
      __$$_PokemonDataRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$_PokemonDataRequestCopyWithImpl<$Res>
    extends _$PokemonDataRequestCopyWithImpl<$Res, _$_PokemonDataRequest>
    implements _$$_PokemonDataRequestCopyWith<$Res> {
  __$$_PokemonDataRequestCopyWithImpl(
      _$_PokemonDataRequest _value, $Res Function(_$_PokemonDataRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_PokemonDataRequest(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDataRequest implements _PokemonDataRequest {
  const _$_PokemonDataRequest({required this.offset, required this.limit});

  factory _$_PokemonDataRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDataRequestFromJson(json);

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'PokemonDataRequest(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDataRequest &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDataRequestCopyWith<_$_PokemonDataRequest> get copyWith =>
      __$$_PokemonDataRequestCopyWithImpl<_$_PokemonDataRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDataRequestToJson(
      this,
    );
  }
}

abstract class _PokemonDataRequest implements PokemonDataRequest {
  const factory _PokemonDataRequest(
      {required final int offset,
      required final int limit}) = _$_PokemonDataRequest;

  factory _PokemonDataRequest.fromJson(Map<String, dynamic> json) =
      _$_PokemonDataRequest.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDataRequestCopyWith<_$_PokemonDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
