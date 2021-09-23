import 'package:hive/hive.dart';
import 'package:home_project/entities/question_type.dart';

part 'question_and_answer.g.dart';

@HiveType(typeId: 210)
class QuestionAndAnswer extends HiveObject {
  QuestionAndAnswer(
      this.question,
      this.answer,
      this.isFreeDescription,
      this.questionType
      );

  @HiveField(0)
  final QuestionType questionType;

  @HiveField(1)
  final String question;

  @HiveField(2)
  final String answer;

  @HiveField(3)
  final bool isFreeDescription;
}