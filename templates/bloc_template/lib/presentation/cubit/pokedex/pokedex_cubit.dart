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
    _receivePokemons();
  }

  Future<void> _receivePokemonData(String name) async {
    state.mapOrNull(loaded: (loadedState) {
      _pokemonRepository.getPokemonData(
          name: name,
          onSuccess: (response) {},
          onError: (errorMessage) {
            // emit(loadedState.copyWith(viewModel: ));
          });
    });
  }

  Future<void> _receivePokemons({int limit = 20, int offset = 20}) async {
    _pokemonRepository.getPokemons(
      onSuccess: (response) {
        final pokemons = response.results;

        print("pokemons result ${response.results}");
        if (pokemons == null || pokemons.isEmpty) {
          emit(const PokedexState.error(message: _emptyListError));
          return;
        }

        final loadingPokemons = List.generate(
            pokemons.length, (index) => const PokemonCellViewModel.loading());

        final viewModel = _mapper.convertToViewModel([]);

        emit(PokedexState.loaded(viewModels: loadingPokemons));
      },
      onError: (message) {
        emit(PokedexState.error(message: message));
      },
    );
  }
}
