// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collectUp.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CollectUpModelAdapter extends TypeAdapter<CollectUpModel> {
  @override
  final int typeId = 50;

  @override
  CollectUpModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectUpModel(
      list: (fields[0] as List?)?.cast<CollectUpItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, CollectUpModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.list);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectUpModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CollectUpItemAdapter extends TypeAdapter<CollectUpItem> {
  @override
  final int typeId = 52;

  @override
  CollectUpItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CollectUpItem(
      mid: fields[0] as int?,
      heroTag: fields[1] as String?,
      face: fields[2] as String?,
      nickname: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CollectUpItem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.mid)
      ..writeByte(1)
      ..write(obj.heroTag)
      ..writeByte(2)
      ..write(obj.face)
      ..writeByte(3)
      ..write(obj.nickname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CollectUpItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
