// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionTypeAdapter extends TypeAdapter<QuestionType> {
  @override
  final int typeId = 150;

  @override
  QuestionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return QuestionType.Strength;
      case 1:
        return QuestionType.Long;
      case 2:
        return QuestionType.Derivation;
      case 3:
        return QuestionType.Do;
      case 4:
        return QuestionType.Emotion;
      case 5:
        return QuestionType.Free;
      case 6:
        return QuestionType.Finish;
      default:
        return QuestionType.Strength;
    }
  }

  @override
  void write(BinaryWriter writer, QuestionType obj) {
    switch (obj) {
      case QuestionType.Strength:
        writer.writeByte(0);
        break;
      case QuestionType.Long:
        writer.writeByte(1);
        break;
      case QuestionType.Derivation:
        writer.writeByte(2);
        break;
      case QuestionType.Do:
        writer.writeByte(3);
        break;
      case QuestionType.Emotion:
        writer.writeByte(4);
        break;
      case QuestionType.Free:
        writer.writeByte(5);
        break;
      case QuestionType.Finish:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
