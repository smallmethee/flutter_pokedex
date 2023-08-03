import 'package:hive/hive.dart';
import 'dart:convert';

part 'pokemon.g.dart';

@HiveType(typeId: 1)
class PokemonModel {
  static const boxKey = 'pokemon';

  @HiveField(1)
  String? name;
  @HiveField(2)
  String? id;
  @HiveField(3)
  String? imageurl;
  @HiveField(4)
  String? xdescription;
  @HiveField(5)
  String? ydescription;
  @HiveField(6)
  String? height;
  @HiveField(7)
  String? category;
  @HiveField(8)
  String? weight;
  @HiveField(9)
  List<String>? typeofpokemon;
  @HiveField(10)
  List<String>? weaknesses;
  @HiveField(11)
  List<String>? evolutions;
  @HiveField(12)
  List<String>? abilities;
  @HiveField(13)
  int? hp;
  @HiveField(14)
  int? attack;
  @HiveField(15)
  int? defense;
  @HiveField(16)
  int? specialAttack;
  @HiveField(17)
  int? specialDefense;
  @HiveField(18)
  int? speed;
  @HiveField(19)
  int? total;
  @HiveField(20)
  String? malePercentage;
  @HiveField(21)
  String? femalePercentage;
  @HiveField(22)
  int? genderless;
  @HiveField(23)
  String? cycles;
  @HiveField(24)
  String? eggGroups;
  @HiveField(25)
  String? evolvedfrom;
  @HiveField(26)
  String? reason;
  @HiveField(27)
  String? baseExp;

  PokemonModel({
    this.name,
    this.id,
    this.imageurl,
    this.xdescription,
    this.ydescription,
    this.height,
    this.category,
    this.weight,
    this.typeofpokemon,
    this.weaknesses,
    this.evolutions,
    this.abilities,
    this.hp,
    this.attack,
    this.defense,
    this.specialAttack,
    this.specialDefense,
    this.speed,
    this.total,
    this.malePercentage,
    this.femalePercentage,
    this.genderless,
    this.cycles,
    this.eggGroups,
    this.evolvedfrom,
    this.reason,
    this.baseExp,
  });

  PokemonModel copyWith({
    String? name,
    String? id,
    String? imageurl,
    String? xdescription,
    String? ydescription,
    String? height,
    String? category,
    String? weight,
    List<String>? typeofpokemon,
    List<String>? weaknesses,
    List<String>? evolutions,
    List<String>? abilities,
    int? hp,
    int? attack,
    int? defense,
    int? specialAttack,
    int? specialDefense,
    int? speed,
    int? total,
    String? malePercentage,
    String? femalePercentage,
    int? genderless,
    String? cycles,
    String? eggGroups,
    String? evolvedfrom,
    String? reason,
    String? baseExp,
  }) =>
      PokemonModel(
        name: name ?? this.name,
        id: id ?? this.id,
        imageurl: imageurl ?? this.imageurl,
        xdescription: xdescription ?? this.xdescription,
        ydescription: ydescription ?? this.ydescription,
        height: height ?? this.height,
        category: category ?? this.category,
        weight: weight ?? this.weight,
        typeofpokemon: typeofpokemon ?? this.typeofpokemon,
        weaknesses: weaknesses ?? this.weaknesses,
        evolutions: evolutions ?? this.evolutions,
        abilities: abilities ?? this.abilities,
        hp: hp ?? this.hp,
        attack: attack ?? this.attack,
        defense: defense ?? this.defense,
        specialAttack: specialAttack ?? this.specialAttack,
        specialDefense: specialDefense ?? this.specialDefense,
        speed: speed ?? this.speed,
        total: total ?? this.total,
        malePercentage: malePercentage ?? this.malePercentage,
        femalePercentage: femalePercentage ?? this.femalePercentage,
        genderless: genderless ?? this.genderless,
        cycles: cycles ?? this.cycles,
        eggGroups: eggGroups ?? this.eggGroups,
        evolvedfrom: evolvedfrom ?? this.evolvedfrom,
        reason: reason ?? this.reason,
        baseExp: baseExp ?? this.baseExp,
      );

  factory PokemonModel.fromJson(String str) => PokemonModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromMap(Map<String, dynamic> json) => PokemonModel(
        name: json["name"],
        id: json["id"],
        imageurl: json["imageurl"],
        xdescription: json["xdescription"],
        ydescription: json["ydescription"],
        height: json["height"],
        category: json["category"],
        weight: json["weight"],
        typeofpokemon: json["typeofpokemon"] == null
            ? []
            : List<String>.from(json["typeofpokemon"]!.map((x) => x)),
        weaknesses:
            json["weaknesses"] == null ? [] : List<String>.from(json["weaknesses"]!.map((x) => x)),
        evolutions:
            json["evolutions"] == null ? [] : List<String>.from(json["evolutions"]!.map((x) => x)),
        abilities:
            json["abilities"] == null ? [] : List<String>.from(json["abilities"]!.map((x) => x)),
        hp: json["hp"],
        attack: json["attack"],
        defense: json["defense"],
        specialAttack: json["special_attack"],
        specialDefense: json["special_defense"],
        speed: json["speed"],
        total: json["total"],
        malePercentage: json["male_percentage"],
        femalePercentage: json["female_percentage"],
        genderless: json["genderless"],
        cycles: json["cycles"],
        eggGroups: json["egg_groups"],
        evolvedfrom: json["evolvedfrom"],
        reason: json["reason"],
        baseExp: json["base_exp"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "id": id,
        "imageurl": imageurl,
        "xdescription": xdescription,
        "ydescription": ydescription,
        "height": height,
        "category": category,
        "weight": weight,
        "typeofpokemon":
            typeofpokemon == null ? [] : List<dynamic>.from(typeofpokemon!.map((x) => x)),
        "weaknesses": weaknesses == null ? [] : List<dynamic>.from(weaknesses!.map((x) => x)),
        "evolutions": evolutions == null ? [] : List<dynamic>.from(evolutions!.map((x) => x)),
        "abilities": abilities == null ? [] : List<dynamic>.from(abilities!.map((x) => x)),
        "hp": hp,
        "attack": attack,
        "defense": defense,
        "special_attack": specialAttack,
        "special_defense": specialDefense,
        "speed": speed,
        "total": total,
        "male_percentage": malePercentage,
        "female_percentage": femalePercentage,
        "genderless": genderless,
        "cycles": cycles,
        "egg_groups": eggGroups,
        "evolvedfrom": evolvedfrom,
        "reason": reason,
        "base_exp": baseExp,
      };
}
