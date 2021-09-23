// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatRoomEntityAdapter extends TypeAdapter<ChatRoomEntity> {
  @override
  final int typeId = 200;

  @override
  ChatRoomEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatRoomEntity(
      fields[0] as Emotion,
      fields[1] as DateTime,
      (fields[2] as List).cast<QuestionAndAnswer>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChatRoomEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.emotionType)
      ..writeByte(1)
      ..write(obj.startUpTime)
      ..writeByte(2)
      ..write(obj.questionAndAnswer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatRoomEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
