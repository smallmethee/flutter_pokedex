import 'package:flutter_pokedex/controllers/pokemon_controller.dart';
import 'package:flutter_pokedex/views/home/home_view.dart';
import 'package:flutter_pokedex/views/pokedex/pokedex_view.dart';
import 'package:flutter_pokedex/views/splash_view.dart';
import 'package:get/get.dart';

class Pages {
  static const String splash = '/';
  static const String home = '/home';
  static const String pokedex = '/home/pokedex';
  static const String pokemonInfo = '/home/pokemon';
  static const String typeEffectsScreen = '/home/type';
  static const String itemsList = '/home/items';
}

class NavigateRoute {
  NavigateRoute._();
  static final List<GetPage<dynamic>> pages = [
    GetPage(name: Pages.splash, page: () => const SplashView()),
    GetPage(
      name: Pages.home,
      page: () => const HomeView(),
    ),
    GetPage(name: Pages.pokedex, page: () => const PokedexView(), binding: PokemonBindings())
  ];
}
