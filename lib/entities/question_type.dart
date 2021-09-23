import 'package:hive/hive.dart';

part 'question_type.g.dart';

@HiveType(typeId: 150)
enum QuestionType {
  @HiveField(0)
  Strength,
  @HiveField(1)
  Long,
  @HiveField(2)
  Derivation,
  @HiveField(3)
  Do,
  @HiveField(4)
  Emotion,
  @HiveField(5)
  Free,
  @HiveField(6)
  Finish
}