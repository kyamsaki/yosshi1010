import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/extensions/base_extension.dart';
import 'package:home_project/screens/question_result/to_question_result.dart';
import 'package:home_project/models/question_result_screen.dart';

class CalendarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List startTimeList = QuestionResultScreenModel.listStartTime();
    var reverseList = List.from(startTimeList.reversed);
    print('1つ目');
    print(reverseList[0]);
    print('2つ目');
    print(reverseList[1]);
    print('3つ目');
    print(reverseList[2]);
    print('4つ目');
    print(reverseList[3]);
    print('5つ目');
    print(reverseList[4]);
    DateTime _defineTime = DateTime.parse('2021-09-21 07:10:28.783');
    // 2021-09-20 23:02:21.243
    // 2021-09-20 23:59:22.667
    print(startTimeList.contains(_defineTime));

    print(_defineTime);
    return Column(
      children:[
        ElevatedButton(
        onPressed: () {
          onTransition(PathStrings.question, context);
        },
          child: Text(PathStrings.question),
      ),
        ElevatedButton(
        onPressed: () {
          onTransition(PathStrings.questionResult, context, arguments: ToQuestionResult(_defineTime,true));
        },
          child: Text(PathStrings.questionResult)
        ),
      ]
    );
  }
}