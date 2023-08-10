import 'package:ui_kit/domain/domain.dart';

class PokemonCellViewModel {
  final String? message;
  final PokemonViewModel? viewModel;

  const PokemonCellViewModel._({
    this.viewModel,
    this.message,
  });

  const PokemonCellViewModel.loading()
      : viewModel = null,
        message = null;

  const PokemonCellViewModel.loaded({required PokemonViewModel vm})
      : viewModel = vm,
        message = null;

  const PokemonCellViewModel.error({required String errorMessage})
      : viewModel = null,
        message = errorMessage;
}
