import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_pokedex/hive/pokemons/pokemon.dart';
import 'package:flutter_pokedex/models/enum_data.dart';
import 'package:flutter_pokedex/utils/dio.dart';
import 'package:get/get.dart';

class PokemonBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PokemonController());
  }
}

class PokemonController extends GetxController {
  final data = Rx<List<PokemonModel>>([]);
  final status = Rx<FetchStatus>(FetchStatus.idle);

  @override
  void onInit() {
    query();
    super.onInit();
  }

  Future<void> query() async {
    try {
      if (data.value.isEmpty) {
        status.value = FetchStatus.isLoading;
      } else {
        status.value = FetchStatus.isBackgroundLoading;
      }

      final response = await dio.get('/pokemons.json');
      final pokemons =
          (json.decode(response.data) as List).map((item) => PokemonModel.fromMap(item)).toList();
      data.value = pokemons;
      status.value = FetchStatus.isSuccess;
    } catch (e) {
      status.value = FetchStatus.isError;
      if (kDebugMode) {
        print('[PokemonController] :: $e');
      }
    }
  }
}
