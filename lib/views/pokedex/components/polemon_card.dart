import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/images.dart';
import 'package:flutter_pokedex/hive/pokemons/pokemon.dart';
import 'package:flutter_pokedex/views/pokedex/components/pokemon_image.dart';
import 'package:flutter_pokedex/views/pokedex/components/pokemon_type.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolemonCard extends StatelessWidget {
  const PolemonCard({Key? key, required this.pokemon}) : super(key: key);

  final PokemonModel pokemon;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final itemHeight = constrains.maxHeight;

      return Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.4),
              blurRadius: 2.r,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white10,
              highlightColor: Colors.white10,
              child: Stack(
                children: [
                  _buildPokeballDecoration(height: itemHeight),
                  _buildPokemon(height: itemHeight),
                  _buildPokemonNumber(),
                  _CardContent(pokemon),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _buildPokeballDecoration({required double height}) {
    final pokeballSize = height * 0.76;
    return Positioned(
      bottom: -height * 0.13,
      right: -height * 0.03,
      child: Image(
        image: Images.pokeball,
        width: pokeballSize,
        height: pokeballSize,
        color: Colors.white.withOpacity(0.14),
      ),
    );
  }

  Widget _buildPokemon({required double height}) {
    final pokemonSize = height * 0.76;
    return Positioned(
      bottom: -2,
      right: 2,
      child: PokemonImage(
        size: Size.square(pokemonSize),
        pokemon: pokemon,
      ),
    );
  }

  Widget _buildPokemonNumber() {
    return Positioned(
      top: 10,
      right: 14,
      child: Text(
        '${pokemon.id}',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black12,
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  final PokemonModel pokemon;

  const _CardContent(this.pokemon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: REdgeInsets.fromLTRB(16, 24, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              tag: '${pokemon.name}',
              child: Text(
                '${pokemon.name}',
                style: TextStyle(
                  fontSize: 14,
                  height: 0.7,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            ..._buildTypes(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTypes(BuildContext context) {
    return pokemon.typeofpokemon!
        .take(2)
        .map(
          (type) => Padding(
            padding: REdgeInsets.only(bottom: 6),
            child: PokemonType(type),
          ),
        )
        .toList();
  }
}
