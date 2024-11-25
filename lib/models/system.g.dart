// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SystemDataAdapter extends TypeAdapter<SystemData> {
  @override
  final int typeId = 0;

  @override
  SystemData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SystemData(
      themeMode: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SystemData obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.themeMode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
