import 'package:flutter/material.dart';
import 'package:flutter_pokedex/components/main_silver_app_bar.dart';
import 'package:flutter_pokedex/controllers/pokemon_controller.dart';
import 'package:flutter_pokedex/models/enum_data.dart';
import 'package:flutter_pokedex/views/pokedex/components/polemon_card.dart';
import 'package:get/get.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  final _scrollKey = GlobalKey();
  final _pokemonController = Get.find<PokemonController>();
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        key: _scrollKey,
        headerSliverBuilder: (_, __) => [
              MainSliverAppBar(
                context: context,
                onLeadingPress: () {
                  Get.back();
                },
              ),
            ],
        body: Obx(
          () {
            final data = _pokemonController.data.value;

            if (_pokemonController.status.value == FetchStatus.isLoading) {
              return const Center(child: Text('...loading'));
            }

            if (data.isEmpty) {
              return const Center(child: Text('isEmpty'));
            }

            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return PolemonCard(pokemon: item);
                });
          },
        ));
  }
}
