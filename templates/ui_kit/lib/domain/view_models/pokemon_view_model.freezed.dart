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
  Color get color => throw _privateConstructorUsedError;

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
  $Res call({String name, String imageUrl, Color color});
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
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
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
  $Res call({String name, String imageUrl, Color color});
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
    Object? color = null,
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
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_PokemonViewModel implements _PokemonViewModel {
  const _$_PokemonViewModel(
      {required this.name,
      required this.imageUrl,
      this.color = Palette.blue900});

  @override
  final String name;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'PokemonViewModel(name: $name, imageUrl: $imageUrl, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonViewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl, color);

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
      final Color color}) = _$_PokemonViewModel;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonViewModelCopyWith<_$_PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
