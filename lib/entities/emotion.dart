import 'package:hive/hive.dart';

part 'emotion.g.dart';

@HiveType(typeId: 120)
enum Emotion {
  @HiveField(0)
  Ecstasy,
  @HiveField(1)
  Admiration,
  @HiveField(2)
  Terror,
  @HiveField(3)
  Amazement,
  @HiveField(4)
  Grief,
  @HiveField(5)
  Loathing,
  @HiveField(6)
  Rage,
  @HiveField(7)
  Vigilance
}

extension EmotionText on Emotion {
  String get name {
    if (this == Emotion.Ecstasy)
      return '歓喜';
    if (this == Emotion.Admiration)
      return '敬愛';
    if (this == Emotion.Terror)
      return '恐怖';
    if (this == Emotion.Amazement)
      return '驚嘆';
    if (this == Emotion.Grief)
      return '悲嘆';
    if (this == Emotion.Loathing)
      return '嫌悪';
    if (this == Emotion.Rage)
      return '激怒';
    if (this == Emotion.Vigilance)
      return '警戒';
    return '';
  }
}