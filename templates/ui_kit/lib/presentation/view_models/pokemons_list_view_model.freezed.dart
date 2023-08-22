// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonsListViewModel {
  List<PokemonViewModel>? get pokemons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonsListViewModelCopyWith<PokemonsListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsListViewModelCopyWith<$Res> {
  factory $PokemonsListViewModelCopyWith(PokemonsListViewModel value,
          $Res Function(PokemonsListViewModel) then) =
      _$PokemonsListViewModelCopyWithImpl<$Res, PokemonsListViewModel>;
  @useResult
  $Res call({List<PokemonViewModel>? pokemons});
}

/// @nodoc
class _$PokemonsListViewModelCopyWithImpl<$Res,
        $Val extends PokemonsListViewModel>
    implements $PokemonsListViewModelCopyWith<$Res> {
  _$PokemonsListViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: freezed == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonViewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonsListViewModelCopyWith<$Res>
    implements $PokemonsListViewModelCopyWith<$Res> {
  factory _$$_PokemonsListViewModelCopyWith(_$_PokemonsListViewModel value,
          $Res Function(_$_PokemonsListViewModel) then) =
      __$$_PokemonsListViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonViewModel>? pokemons});
}

/// @nodoc
class __$$_PokemonsListViewModelCopyWithImpl<$Res>
    extends _$PokemonsListViewModelCopyWithImpl<$Res, _$_PokemonsListViewModel>
    implements _$$_PokemonsListViewModelCopyWith<$Res> {
  __$$_PokemonsListViewModelCopyWithImpl(_$_PokemonsListViewModel _value,
      $Res Function(_$_PokemonsListViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(_$_PokemonsListViewModel(
      pokemons: freezed == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonViewModel>?,
    ));
  }
}

/// @nodoc

class _$_PokemonsListViewModel implements _PokemonsListViewModel {
  const _$_PokemonsListViewModel({final List<PokemonViewModel>? pokemons})
      : _pokemons = pokemons;

  final List<PokemonViewModel>? _pokemons;
  @override
  List<PokemonViewModel>? get pokemons {
    final value = _pokemons;
    if (value == null) return null;
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokemonsListViewModel(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonsListViewModel &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonsListViewModelCopyWith<_$_PokemonsListViewModel> get copyWith =>
      __$$_PokemonsListViewModelCopyWithImpl<_$_PokemonsListViewModel>(
          this, _$identity);
}

abstract class _PokemonsListViewModel implements PokemonsListViewModel {
  const factory _PokemonsListViewModel(
      {final List<PokemonViewModel>? pokemons}) = _$_PokemonsListViewModel;

  @override
  List<PokemonViewModel>? get pokemons;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonsListViewModelCopyWith<_$_PokemonsListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
