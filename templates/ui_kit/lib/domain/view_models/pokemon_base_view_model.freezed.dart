// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_base_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonBaseViewModel {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonBaseViewModelCopyWith<PokemonBaseViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonBaseViewModelCopyWith<$Res> {
  factory $PokemonBaseViewModelCopyWith(PokemonBaseViewModel value,
          $Res Function(PokemonBaseViewModel) then) =
      _$PokemonBaseViewModelCopyWithImpl<$Res, PokemonBaseViewModel>;
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class _$PokemonBaseViewModelCopyWithImpl<$Res,
        $Val extends PokemonBaseViewModel>
    implements $PokemonBaseViewModelCopyWith<$Res> {
  _$PokemonBaseViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonBaseViewModelCopyWith<$Res>
    implements $PokemonBaseViewModelCopyWith<$Res> {
  factory _$$_PokemonBaseViewModelCopyWith(_$_PokemonBaseViewModel value,
          $Res Function(_$_PokemonBaseViewModel) then) =
      __$$_PokemonBaseViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class __$$_PokemonBaseViewModelCopyWithImpl<$Res>
    extends _$PokemonBaseViewModelCopyWithImpl<$Res, _$_PokemonBaseViewModel>
    implements _$$_PokemonBaseViewModelCopyWith<$Res> {
  __$$_PokemonBaseViewModelCopyWithImpl(_$_PokemonBaseViewModel _value,
      $Res Function(_$_PokemonBaseViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_PokemonBaseViewModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PokemonBaseViewModel implements _PokemonBaseViewModel {
  const _$_PokemonBaseViewModel({required this.name, required this.imageUrl});

  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PokemonBaseViewModel(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonBaseViewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonBaseViewModelCopyWith<_$_PokemonBaseViewModel> get copyWith =>
      __$$_PokemonBaseViewModelCopyWithImpl<_$_PokemonBaseViewModel>(
          this, _$identity);
}

abstract class _PokemonBaseViewModel implements PokemonBaseViewModel {
  const factory _PokemonBaseViewModel(
      {required final String name,
      required final String imageUrl}) = _$_PokemonBaseViewModel;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonBaseViewModelCopyWith<_$_PokemonBaseViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
