// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonsResponse _$PokemonsResponseFromJson(Map<String, dynamic> json) {
  return _PokemonsResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonsResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonPreview>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsResponseCopyWith<PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsResponseCopyWith<$Res> {
  factory $PokemonsResponseCopyWith(
          PokemonsResponse value, $Res Function(PokemonsResponse) then) =
      _$PokemonsResponseCopyWithImpl<$Res, PokemonsResponse>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonPreview>? results});
}

/// @nodoc
class _$PokemonsResponseCopyWithImpl<$Res, $Val extends PokemonsResponse>
    implements $PokemonsResponseCopyWith<$Res> {
  _$PokemonsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonPreview>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonsResponseCopyWith<$Res>
    implements $PokemonsResponseCopyWith<$Res> {
  factory _$$_PokemonsResponseCopyWith(
          _$_PokemonsResponse value, $Res Function(_$_PokemonsResponse) then) =
      __$$_PokemonsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonPreview>? results});
}

/// @nodoc
class __$$_PokemonsResponseCopyWithImpl<$Res>
    extends _$PokemonsResponseCopyWithImpl<$Res, _$_PokemonsResponse>
    implements _$$_PokemonsResponseCopyWith<$Res> {
  __$$_PokemonsResponseCopyWithImpl(
      _$_PokemonsResponse _value, $Res Function(_$_PokemonsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PokemonsResponse(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonPreview>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonsResponse implements _PokemonsResponse {
  const _$_PokemonsResponse(
      {this.count = 0,
      this.next,
      this.previous,
      final List<PokemonPreview>? results})
      : _results = results;

  factory _$_PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonsResponseFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonPreview>? _results;
  @override
  List<PokemonPreview>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonsResponse &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonsResponseCopyWith<_$_PokemonsResponse> get copyWith =>
      __$$_PokemonsResponseCopyWithImpl<_$_PokemonsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonsResponseToJson(
      this,
    );
  }
}

abstract class _PokemonsResponse implements PokemonsResponse {
  const factory _PokemonsResponse(
      {final int count,
      final String? next,
      final String? previous,
      final List<PokemonPreview>? results}) = _$_PokemonsResponse;

  factory _PokemonsResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonsResponse.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonPreview>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonsResponseCopyWith<_$_PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
