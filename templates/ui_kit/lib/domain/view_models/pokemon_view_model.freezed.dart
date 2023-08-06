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

PokemonViewModel _$PokemonViewModelFromJson(Map<String, dynamic> json) {
  return _PokemonViewModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonViewModel {
  String get name => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({String name, String? pictureUrl});
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
    Object? pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
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
  $Res call({String name, String? pictureUrl});
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
    Object? pictureUrl = freezed,
  }) {
    return _then(_$_PokemonViewModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonViewModel implements _PokemonViewModel {
  const _$_PokemonViewModel({required this.name, this.pictureUrl});

  factory _$_PokemonViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonViewModelFromJson(json);

  @override
  final String name;
  @override
  final String? pictureUrl;

  @override
  String toString() {
    return 'PokemonViewModel(name: $name, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonViewModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, pictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonViewModelCopyWith<_$_PokemonViewModel> get copyWith =>
      __$$_PokemonViewModelCopyWithImpl<_$_PokemonViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonViewModelToJson(
      this,
    );
  }
}

abstract class _PokemonViewModel implements PokemonViewModel {
  const factory _PokemonViewModel(
      {required final String name,
      final String? pictureUrl}) = _$_PokemonViewModel;

  factory _PokemonViewModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonViewModel.fromJson;

  @override
  String get name;
  @override
  String? get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonViewModelCopyWith<_$_PokemonViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
