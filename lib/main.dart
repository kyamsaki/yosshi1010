import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/entities/chat_room.dart';
import 'package:home_project/entities/emotion.dart';
import 'package:home_project/entities/question.dart';
import 'package:home_project/entities/question_and_answer.dart';
import 'package:home_project/entities/question_type.dart';
import 'package:home_project/screens/emotion_guide/emotion_guide_screen.dart';
import 'package:home_project/screens/home/home_screen.dart';
import 'package:home_project/screens/question/question_screen.dart';
import 'package:home_project/screens/question_result/question_result_screen.dart';
import 'package:home_project/screens/tutorial/turorial_screen.dart';
import 'package:home_project/screens/wheel_of_emotion/wheel_of_emotion_screen.dart';


void main() async {
  // Hiveの初期化
  await Hive.initFlutter();


  // TODO カスタムアダプターの追加
  Hive.registerAdapter(QuestionEntityAdapter());
  Hive.registerAdapter(ChatRoomEntityAdapter());
  Hive.registerAdapter(QuestionTypeAdapter());
  Hive.registerAdapter(QuestionAndAnswerAdapter());
  Hive.registerAdapter(EmotionAdapter());
  
  await Hive.openBox<ChatRoomEntity>('chat_room');
  await Hive.openBox<QuestionEntity>('question');

  //var box = Hive.box<QuestionEntity>('question');
  //box.deleteFromDisk();

  // migrate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PathStrings.home,
      routes: <String, WidgetBuilder> {
        PathStrings.home: (BuildContext context) => HomeScreen(),
        PathStrings.wheelOfEmotion: (BuildContext context) => WheelOfEmotionScreen(),
        PathStrings.question: (BuildContext context) => QuestionScreen(),
        PathStrings.questionResult: (BuildContext context) => QuestionResultScreen(),
        PathStrings.emotionGuide: (BuildContext context) => EmotionGuideScreen(),
        PathStrings.tutorial: (BuildContext context) => TutorialScreen()
      },
    );
  }
}
