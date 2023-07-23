import 'package:flutter_pokedex/hive/pokemons/pokemon.dart';
import 'package:hive/hive.dart';

class PokemonHiveRepository {
  static Future<Box<PokemonHiveModel>> openBox() async =>
      await Hive.openBox<PokemonHiveModel>(PokemonHiveModel.boxKey);

  static Future<bool> hasData() async {
    final pokemonBox = Hive.box<PokemonHiveModel>(PokemonHiveModel.boxKey);
    return pokemonBox.length > 0;
  }
}
