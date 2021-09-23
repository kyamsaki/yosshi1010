// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmotionAdapter extends TypeAdapter<Emotion> {
  @override
  final int typeId = 120;

  @override
  Emotion read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Emotion.Ecstasy;
      case 1:
        return Emotion.Admiration;
      case 2:
        return Emotion.Terror;
      case 3:
        return Emotion.Amazement;
      case 4:
        return Emotion.Grief;
      case 5:
        return Emotion.Loathing;
      case 6:
        return Emotion.Rage;
      case 7:
        return Emotion.Vigilance;
      default:
        return Emotion.Ecstasy;
    }
  }

  @override
  void write(BinaryWriter writer, Emotion obj) {
    switch (obj) {
      case Emotion.Ecstasy:
        writer.writeByte(0);
        break;
      case Emotion.Admiration:
        writer.writeByte(1);
        break;
      case Emotion.Terror:
        writer.writeByte(2);
        break;
      case Emotion.Amazement:
        writer.writeByte(3);
        break;
      case Emotion.Grief:
        writer.writeByte(4);
        break;
      case Emotion.Loathing:
        writer.writeByte(5);
        break;
      case Emotion.Rage:
        writer.writeByte(6);
        break;
      case Emotion.Vigilance:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmotionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
