// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonModelAdapter extends TypeAdapter<PokemonModel> {
  @override
  final int typeId = 1;

  @override
  PokemonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonModel(
      name: fields[1] as String?,
      id: fields[2] as String?,
      imageurl: fields[3] as String?,
      xdescription: fields[4] as String?,
      ydescription: fields[5] as String?,
      height: fields[6] as String?,
      category: fields[7] as String?,
      weight: fields[8] as String?,
      typeofpokemon: (fields[9] as List?)?.cast<String>(),
      weaknesses: (fields[10] as List?)?.cast<String>(),
      evolutions: (fields[11] as List?)?.cast<String>(),
      abilities: (fields[12] as List?)?.cast<String>(),
      hp: fields[13] as int?,
      attack: fields[14] as int?,
      defense: fields[15] as int?,
      specialAttack: fields[16] as int?,
      specialDefense: fields[17] as int?,
      speed: fields[18] as int?,
      total: fields[19] as int?,
      malePercentage: fields[20] as String?,
      femalePercentage: fields[21] as String?,
      genderless: fields[22] as int?,
      cycles: fields[23] as String?,
      eggGroups: fields[24] as String?,
      evolvedfrom: fields[25] as String?,
      reason: fields[26] as String?,
      baseExp: fields[27] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonModel obj) {
    writer
      ..writeByte(27)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.imageurl)
      ..writeByte(4)
      ..write(obj.xdescription)
      ..writeByte(5)
      ..write(obj.ydescription)
      ..writeByte(6)
      ..write(obj.height)
      ..writeByte(7)
      ..write(obj.category)
      ..writeByte(8)
      ..write(obj.weight)
      ..writeByte(9)
      ..write(obj.typeofpokemon)
      ..writeByte(10)
      ..write(obj.weaknesses)
      ..writeByte(11)
      ..write(obj.evolutions)
      ..writeByte(12)
      ..write(obj.abilities)
      ..writeByte(13)
      ..write(obj.hp)
      ..writeByte(14)
      ..write(obj.attack)
      ..writeByte(15)
      ..write(obj.defense)
      ..writeByte(16)
      ..write(obj.specialAttack)
      ..writeByte(17)
      ..write(obj.specialDefense)
      ..writeByte(18)
      ..write(obj.speed)
      ..writeByte(19)
      ..write(obj.total)
      ..writeByte(20)
      ..write(obj.malePercentage)
      ..writeByte(21)
      ..write(obj.femalePercentage)
      ..writeByte(22)
      ..write(obj.genderless)
      ..writeByte(23)
      ..write(obj.cycles)
      ..writeByte(24)
      ..write(obj.eggGroups)
      ..writeByte(25)
      ..write(obj.evolvedfrom)
      ..writeByte(26)
      ..write(obj.reason)
      ..writeByte(27)
      ..write(obj.baseExp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
