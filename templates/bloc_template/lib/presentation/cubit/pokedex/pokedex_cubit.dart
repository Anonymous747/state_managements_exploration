import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_kit/ui_kit.dart';

part 'pokedex_mapper.dart';
part 'pokedex_state.dart';
part 'pokedex_cubit.freezed.dart';

const _emptyListError = 'The pokemons list is empty';

class PokedexCubit extends Cubit<PokedexState> {
  final PokedexMapper _mapper = PokedexMapper();
  final PokemonRepository _pokemonRepository;

  PokedexCubit(this._pokemonRepository) : super(const PokedexState.loading()) {
    receivePokemons();
  }

  Future<void> receivePokemons({int limit = 20, int offset = 20}) async {
    _pokemonRepository.getPokemons(
      onSuccess: (response) {
        final pokemons = response.results;

        print("pokemons result ${response.results}");
        if (pokemons == null || pokemons.isEmpty) {
          emit(const PokedexState.error(message: _emptyListError));
          return;
        }

        final viewModel = _mapper.convertToViewModel([]);

        emit(PokedexState.loaded(viewModel: viewModel));
      },
      onError: (message) {
        emit(PokedexState.error(message: message));
      },
    );
  }
}
