// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_and_answer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionAndAnswerAdapter extends TypeAdapter<QuestionAndAnswer> {
  @override
  final int typeId = 210;

  @override
  QuestionAndAnswer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionAndAnswer(
      fields[1] as String,
      fields[2] as String,
      fields[3] as bool,
      fields[0] as QuestionType,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionAndAnswer obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.questionType)
      ..writeByte(1)
      ..write(obj.question)
      ..writeByte(2)
      ..write(obj.answer)
      ..writeByte(3)
      ..write(obj.isFreeDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAndAnswerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
