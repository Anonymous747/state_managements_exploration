import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/domain/view_models/index.dart';

part 'pokemons_list_view_model.freezed.dart';

@freezed
class PokemonsListViewModel with _$PokemonsListViewModel {
  const factory PokemonsListViewModel({
    List<PokemonCellViewModel>? pokemons,
  }) = _PokemonsListViewModel;
}
