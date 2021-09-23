// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionEntityAdapter extends TypeAdapter<QuestionEntity> {
  @override
  final int typeId = 100;

  @override
  QuestionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionEntity(
      fields[0] as bool,
      fields[1] as String,
      (fields[2] as List).cast<String>(),
      fields[3] as QuestionType,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isOpenWheelOfEmotion)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.answers)
      ..writeByte(3)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
