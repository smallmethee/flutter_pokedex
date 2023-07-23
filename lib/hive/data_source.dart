import 'dart:io';

import 'package:flutter_pokedex/hive/pokemons/pokemon.dart';
import 'package:flutter_pokedex/hive/pokemons/repository.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class DataSource {
  static Future<void> initialize() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final hiveDir = Directory('${appDocDir.path}/hive');
    if (!hiveDir.existsSync()) {
      hiveDir.createSync();
    }
    Hive
      ..init(hiveDir.path)
      ..registerAdapter<PokemonHiveModel>(PokemonHiveModelAdapter());
    await PokemonHiveRepository.openBox();
  }
}
