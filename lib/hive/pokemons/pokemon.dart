import 'package:hive/hive.dart';

part 'pokemon.g.dart';

@HiveType(typeId: 1)
class PokemonHiveModel extends HiveObject {
  static const String boxKey = 'pokemon';

  @HiveField(0)
  late String name;

  @HiveField(1)
  late String id;

  @HiveField(2)
  late String imageurl;

  @HiveField(3)
  late String xdescription;

  @HiveField(4)
  late String ydescription;

  @HiveField(5)
  late String height;

  @HiveField(6)
  late String category;

  @HiveField(7)
  late String weight;

  @HiveField(8)
  late List<String> typeofpokemon;

  @HiveField(9)
  late List<String> weaknesses;

  @HiveField(10)
  late List<String> evolutions;

  @HiveField(11)
  late List<String> abilities;

  @HiveField(12)
  late int hp;

  @HiveField(13)
  late int attack;

  @HiveField(14)
  late int defense;

  @HiveField(15)
  late int special_attack;

  @HiveField(16)
  late int special_defense;

  @HiveField(17)
  late int speed;

  @HiveField(18)
  late int total;

  @HiveField(19)
  late String male_percentage;

  @HiveField(20)
  late String female_percentage;

  @HiveField(21)
  late int genderless;

  @HiveField(22)
  late String cycles;

  @HiveField(23)
  late String egg_groups;

  @HiveField(24)
  late String evolvedfrom;

  @HiveField(25)
  late String reason;

  @HiveField(26)
  late String base_exp;
}
