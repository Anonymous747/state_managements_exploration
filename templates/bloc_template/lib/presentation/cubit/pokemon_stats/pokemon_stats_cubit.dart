import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stats_state.dart';
part 'pokemon_stats_cubit.freezed.dart';

class PokemonStatsCubit extends Cubit<PokemonStatsState> {
  PokemonStatsCubit() : super(const PokemonStatsState.initial());
}
