import 'package:flutter/material.dart';
import 'package:ui_kit/common/common.dart';
import 'package:ui_kit/components/components.dart';
import 'package:ui_kit/domain/domain.dart';

class PokedexContainer extends StatelessWidget {
  final PokemonsListViewModel pokemons;
  final String title;
  final VoidCallback onBack;

  const PokedexContainer({
    required this.title,
    required this.pokemons,
    required this.onBack,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blue300,
      body: Stack(
        children: [
          Positioned(
            top: 20,
            child: BackButton(onPressed: onBack),
          ),
          Column(
            children: [
              Center(
                child: PokemonLogo(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: PokemonTextField(
                  hint: 'Search...',
                  borderRadius: 24,
                ),
              ),
              Expanded(
                child: PokemonsList(
                  pokemons: [
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    ),
                    PokemonViewModel(
                      name: 'sadas',
                      color: Palette.purple300,
                      imageUrl:
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png',
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
