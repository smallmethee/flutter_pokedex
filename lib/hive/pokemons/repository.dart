import 'package:flutter_pokedex/hive/pokemons/pokemon.dart';
import 'package:hive/hive.dart';

class PokemonHiveRepository {
  static Future<Box<PokemonModel>> openBox() async =>
      await Hive.openBox<PokemonModel>(PokemonModel.boxKey);

  static Future<bool> hasData() async {
    final pokemonBox = Hive.box<PokemonModel>(PokemonModel.boxKey);
    return pokemonBox.length > 0;
  }
}
