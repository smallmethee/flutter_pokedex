import 'package:flutter/material.dart';
import 'package:flutter_pokedex/components/pokeball_background.dart';
import 'package:flutter_pokedex/views/pokedex/components/pokemon_list.dart';

class PokedexView extends StatefulWidget {
  const PokedexView({Key? key}) : super(key: key);

  @override
  _PokedexViewState createState() => _PokedexViewState();
}

class _PokedexViewState extends State<PokedexView> {
  @override
  Widget build(BuildContext context) {
    return const PokeballBackground(
      child: Stack(children: [PokemonList()]),
    );
  }
}
