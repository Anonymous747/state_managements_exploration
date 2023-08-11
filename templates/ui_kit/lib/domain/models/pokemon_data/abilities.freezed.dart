// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abilities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return _Abilities.fromJson(json);
}

/// @nodoc
mixin _$Abilities {
  Ability? get ability => throw _privateConstructorUsedError;
  int? get slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool? get isHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilitiesCopyWith<Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilitiesCopyWith<$Res> {
  factory $AbilitiesCopyWith(Abilities value, $Res Function(Abilities) then) =
      _$AbilitiesCopyWithImpl<$Res, Abilities>;
  @useResult
  $Res call(
      {Ability? ability,
      int? slot,
      @JsonKey(name: 'is_hidden') bool? isHidden});

  $AbilityCopyWith<$Res>? get ability;
}

/// @nodoc
class _$AbilitiesCopyWithImpl<$Res, $Val extends Abilities>
    implements $AbilitiesCopyWith<$Res> {
  _$AbilitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? slot = freezed,
    Object? isHidden = freezed,
  }) {
    return _then(_value.copyWith(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AbilityCopyWith<$Res>? get ability {
    if (_value.ability == null) {
      return null;
    }

    return $AbilityCopyWith<$Res>(_value.ability!, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AbilitiesCopyWith<$Res> implements $AbilitiesCopyWith<$Res> {
  factory _$$_AbilitiesCopyWith(
          _$_Abilities value, $Res Function(_$_Abilities) then) =
      __$$_AbilitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Ability? ability,
      int? slot,
      @JsonKey(name: 'is_hidden') bool? isHidden});

  @override
  $AbilityCopyWith<$Res>? get ability;
}

/// @nodoc
class __$$_AbilitiesCopyWithImpl<$Res>
    extends _$AbilitiesCopyWithImpl<$Res, _$_Abilities>
    implements _$$_AbilitiesCopyWith<$Res> {
  __$$_AbilitiesCopyWithImpl(
      _$_Abilities _value, $Res Function(_$_Abilities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? slot = freezed,
    Object? isHidden = freezed,
  }) {
    return _then(_$_Abilities(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as Ability?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Abilities implements _Abilities {
  const _$_Abilities(
      {this.ability, this.slot, @JsonKey(name: 'is_hidden') this.isHidden});

  factory _$_Abilities.fromJson(Map<String, dynamic> json) =>
      _$$_AbilitiesFromJson(json);

  @override
  final Ability? ability;
  @override
  final int? slot;
  @override
  @JsonKey(name: 'is_hidden')
  final bool? isHidden;

  @override
  String toString() {
    return 'Abilities(ability: $ability, slot: $slot, isHidden: $isHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Abilities &&
            (identical(other.ability, ability) || other.ability == ability) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ability, slot, isHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      __$$_AbilitiesCopyWithImpl<_$_Abilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilitiesToJson(
      this,
    );
  }
}

abstract class _Abilities implements Abilities {
  const factory _Abilities(
      {final Ability? ability,
      final int? slot,
      @JsonKey(name: 'is_hidden') final bool? isHidden}) = _$_Abilities;

  factory _Abilities.fromJson(Map<String, dynamic> json) =
      _$_Abilities.fromJson;

  @override
  Ability? get ability;
  @override
  int? get slot;
  @override
  @JsonKey(name: 'is_hidden')
  bool? get isHidden;
  @override
  @JsonKey(ignore: true)
  _$$_AbilitiesCopyWith<_$_Abilities> get copyWith =>
      throw _privateConstructorUsedError;
}
