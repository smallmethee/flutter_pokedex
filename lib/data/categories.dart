import 'package:flutter_pokedex/constants/colors.dart';
import 'package:flutter_pokedex/data/entities/category.dart';
import 'package:flutter_pokedex/routers/route.dart';

const List<Category> categories = [
  Category(name: 'Pokedex', color: AppColors.teal, route: Pages.pokedex),
  Category(name: 'Moves', color: AppColors.red, route: Pages.pokedex),
  Category(name: 'Abilities', color: AppColors.blue, route: Pages.pokedex),
  Category(name: 'Locations', color: AppColors.purple, route: Pages.pokedex),
];
