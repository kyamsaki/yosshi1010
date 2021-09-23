import 'package:hive/hive.dart';
import 'package:home_project/entities/emotion.dart';
import 'package:home_project/entities/question_and_answer.dart';

part 'chat_room.g.dart';

@HiveType(typeId: 200)
class ChatRoomEntity extends HiveObject{
  ChatRoomEntity(
      this.emotionType,
      this.startUpTime,
      this.questionAndAnswer
      );

  @HiveField(0)
  final Emotion emotionType;

  @HiveField(1)
  late final DateTime startUpTime;

  @HiveField(2)
  final List<QuestionAndAnswer> questionAndAnswer;
}

