// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Types _$TypesFromJson(Map<String, dynamic> json) {
  return _Types.fromJson(json);
}

/// @nodoc
mixin _$Types {
  int get slot => throw _privateConstructorUsedError;
  Ability? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesCopyWith<Types> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesCopyWith<$Res> {
  factory $TypesCopyWith(Types value, $Res Function(Types) then) =
      _$TypesCopyWithImpl<$Res, Types>;
  @useResult
  $Res call({int slot, Ability? type});

  $AbilityCopyWith<$Res>? get type;
}

/// @nodoc
class _$TypesCopyWithImpl<$Res, $Val extends Types>
    implements $TypesCopyWith<$Res> {
  _$TypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TypesCopyWith<$Res> implements $TypesCopyWith<$Res> {
  factory _$$_TypesCopyWith(_$_Types value, $Res Function(_$_Types) then) =
      __$$_TypesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Ability? type});

  @override
  $AbilityCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_TypesCopyWithImpl<$Res> extends _$TypesCopyWithImpl<$Res, _$_Types>
    implements _$$_TypesCopyWith<$Res> {
  __$$_TypesCopyWithImpl(_$_Types _value, $Res Function(_$_Types) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = freezed,
  }) {
    return _then(_$_Types(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Ability?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Types implements _Types {
  const _$_Types({required this.slot, required this.type});

  factory _$_Types.fromJson(Map<String, dynamic> json) =>
      _$$_TypesFromJson(json);

  @override
  final int slot;
  @override
  final Ability? type;

  @override
  String toString() {
    return 'Types(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Types &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypesCopyWith<_$_Types> get copyWith =>
      __$$_TypesCopyWithImpl<_$_Types>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypesToJson(
      this,
    );
  }
}

abstract class _Types implements Types {
  const factory _Types(
      {required final int slot, required final Ability? type}) = _$_Types;

  factory _Types.fromJson(Map<String, dynamic> json) = _$_Types.fromJson;

  @override
  int get slot;
  @override
  Ability? get type;
  @override
  @JsonKey(ignore: true)
  _$$_TypesCopyWith<_$_Types> get copyWith =>
      throw _privateConstructorUsedError;
}
