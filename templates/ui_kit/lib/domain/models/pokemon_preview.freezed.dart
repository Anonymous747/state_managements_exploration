// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonPreview _$PokemonPreviewFromJson(Map<String, dynamic> json) {
  return _PokemonPreview.fromJson(json);
}

/// @nodoc
mixin _$PokemonPreview {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonPreviewCopyWith<PokemonPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonPreviewCopyWith<$Res> {
  factory $PokemonPreviewCopyWith(
          PokemonPreview value, $Res Function(PokemonPreview) then) =
      _$PokemonPreviewCopyWithImpl<$Res, PokemonPreview>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonPreviewCopyWithImpl<$Res, $Val extends PokemonPreview>
    implements $PokemonPreviewCopyWith<$Res> {
  _$PokemonPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonPreviewCopyWith<$Res>
    implements $PokemonPreviewCopyWith<$Res> {
  factory _$$_PokemonPreviewCopyWith(
          _$_PokemonPreview value, $Res Function(_$_PokemonPreview) then) =
      __$$_PokemonPreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_PokemonPreviewCopyWithImpl<$Res>
    extends _$PokemonPreviewCopyWithImpl<$Res, _$_PokemonPreview>
    implements _$$_PokemonPreviewCopyWith<$Res> {
  __$$_PokemonPreviewCopyWithImpl(
      _$_PokemonPreview _value, $Res Function(_$_PokemonPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_PokemonPreview(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonPreview implements _PokemonPreview {
  const _$_PokemonPreview({required this.name, required this.url});

  factory _$_PokemonPreview.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonPreviewFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonPreview(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonPreview &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonPreviewCopyWith<_$_PokemonPreview> get copyWith =>
      __$$_PokemonPreviewCopyWithImpl<_$_PokemonPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonPreviewToJson(
      this,
    );
  }
}

abstract class _PokemonPreview implements PokemonPreview {
  const factory _PokemonPreview(
      {required final String name,
      required final String url}) = _$_PokemonPreview;

  factory _PokemonPreview.fromJson(Map<String, dynamic> json) =
      _$_PokemonPreview.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonPreviewCopyWith<_$_PokemonPreview> get copyWith =>
      throw _privateConstructorUsedError;
}
