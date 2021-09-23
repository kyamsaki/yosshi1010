import 'package:hive/hive.dart';
import 'package:home_project/entities/question_type.dart';

part 'question.g.dart';

@HiveType(typeId: 100)
class QuestionEntity extends HiveObject{
  QuestionEntity(
      this.isOpenWheelOfEmotion,
      this.question,
      this.answers,
      this.type
      );

  @HiveField(0)
  final bool isOpenWheelOfEmotion;

  @HiveField(1)
  final String question;

  @HiveField(2)
  final List<String> answers;

  @HiveField(3)
  final QuestionType type;

  bool get isFreeDescription => answers.isEmpty;
}