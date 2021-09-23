import 'package:dash_chat/dash_chat.dart';
import 'package:hive/hive.dart';
import 'package:home_project/entities/chat_room.dart';
import 'package:home_project/entities/question.dart';
import 'package:home_project/entities/question_and_answer.dart';
import 'package:home_project/entities/question_type.dart';

class QuestionScreenModel {
  static final Box<ChatRoomEntity> chatDb = Hive.box('chat_room');
  static final Box<QuestionEntity> questionDb = Hive.box('question');

  static List<QuestionEntity> getQuestions() {
    var questions = questionDb.values.toList();
    if (questions.isEmpty) {
      __migrate();
      questions = questionDb.values.toList();
    }
    return questions;
  }

  static void save(emotionType, startUpTime, List<ChatMessage> messages, questions, user) {
    var userMessage = messages.where((message) => message.user.uid == user.uid).toList();
    var answeredQuestion = questions.where((question) => question.type != QuestionType.Finish).toList();

    List<QuestionAndAnswer> qAndA = [];
    for (int i=0; i<answeredQuestion.length; i++) {
      qAndA.add(QuestionAndAnswer(
          answeredQuestion[i].question,
          userMessage[i].text!,
          answeredQuestion[i].isFreeDescription,
          answeredQuestion[i].type
      ));
    }

    var content = ChatRoomEntity(
      emotionType,
      startUpTime,
      qAndA
    );
    chatDb.add(content);

    print(chatDb.values.toList());
  }

  static void __migrate() {
    final List<QuestionEntity> questions = [
      QuestionEntity(
          false,
          'その感情をどれくらい強く感じていますか？',
          [
            '非常に強く感じている',
            '強く感じている',
            '普通に感じている',
            'まあまあ感じている',
            '少し感じている'
          ],
          QuestionType.Strength
      ),
      QuestionEntity(
          false,
          'どれくらいの長さ感じていますか？',
          [
            '1日',
            '半日',
            '1時間',
            '30分',
            '一瞬'
          ],
          QuestionType.Long
      ),
      QuestionEntity(
          false,
          'その感情の要因はなんですか？',
          [
            '家族',
            '会社',
            '友達',
            '自分',
            'その他'
          ],
          QuestionType.Derivation
      ),
      QuestionEntity(
          false,
          '感情のために、何か行動を起こしましたか？',
          [],
          QuestionType.Do
      ),
      QuestionEntity(
          true,
          'その結果、どんな感情になりました？',
          [],
          QuestionType.Emotion
      ),
      QuestionEntity(
        false,
        '最後にご自由におかきください。',
        [],
        QuestionType.Free,
      ),
      QuestionEntity(
          false,
          '質問終了です！結果になります。ご覧ください！',
          [],
          QuestionType.Finish
      )
    ];

    var db = Hive.box<QuestionEntity>('question');
    for (QuestionEntity question in questions) {
      db.add(question);
    }
    print('migrate done!!');
  }
}