import 'dart:core';

import 'package:hive/hive.dart';
import 'package:home_project/entities/chat_room.dart';
import 'package:home_project/entities/emotion.dart';
import 'package:intl/intl.dart';

class QuestionResultScreenModel {
  static final Box<ChatRoomEntity> chatDb = Hive.box('chat_room');

  // 回答時の内容を取得
  static Map getAnswers(toStartUpTime) {

    //print('koko');
    DateFormat outputFormat = DateFormat('yyyy-MM-dd');
    var stringDate = outputFormat.format(toStartUpTime);
    //print(stringDate);
    var sameTime = chatDb.values.where((entity) => outputFormat.format(entity.startUpTime) == stringDate).toList();
    //print(sameTime.length);

    print(toStartUpTime);
    var answerQuestion = chatDb.values.where((entity) => entity.startUpTime.isAtSameMomentAs(toStartUpTime)).toList();


    // 返すコレクション
    final Map answerList = <String,String>{'todayFeel': EmotionText(answerQuestion[0].emotionType).name};

    // コレクションkey
    final List collectionKey = ['strength','frequency','reason','action','afterFeel','freeMemo'];

    int counter = 0;
    answerQuestion[0].questionAndAnswer.forEach((answer) {
      answerList.putIfAbsent(collectionKey[counter], () => answer.answer);
      counter ++;
    });
    return answerList;
  }
  // 時間リスト取得
  static List listStartTime() {
    List listQuestions = chatDb.values.toList();

    // 返すリスト
    final List listStartTime = [];

    for (var listQuestion in listQuestions) {
      listStartTime.add(listQuestion.startUpTime);
    }
    return listStartTime;
  }
}