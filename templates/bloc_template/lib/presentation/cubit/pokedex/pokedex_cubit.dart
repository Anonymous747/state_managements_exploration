import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

class PokedexCubit extends Cubit<PokedexState> {
  PokedexCubit() : super(const PokedexState.loading());
}
