import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/components/custom_appbar.dart';
import 'package:home_project/constants/word_strings.dart';
import 'package:home_project/models/question_result_screen.dart';
import 'package:home_project/screens/question_result/components/date_widget.dart';
import 'package:home_project/screens/question_result/components/today_feel_widget.dart';
import 'package:home_project/screens/question_result/components/strength_widget.dart';
import 'package:home_project/screens/question_result/components/frequency_widget.dart';
import 'package:home_project/screens/question_result/components/reason_widget.dart';
import 'package:home_project/screens/question_result/components/action_widget.dart';
import 'package:home_project/screens/question_result/components/after_feel_widget.dart';
import 'package:home_project/screens/question_result/components/free_memo_widget.dart';
import 'package:home_project/screens/question_result/to_question_result.dart';

class QuestionResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    ToQuestionResult args = ModalRoute.of(context)!.settings.arguments as ToQuestionResult;
    print(args.startAnswer);
    print(args.backFlag);
    Map answers = QuestionResultScreenModel.getAnswers(args.startAnswer);
    final Size size = MediaQuery.of(context).size;
    final String hanaPicture = args.backFlag ? 'calender' : 'today_register';

    return WillPopScope(
      onWillPop: () async {
        return args.backFlag;
      },
      child: Scaffold(
        appBar: MultiLeadsAppBar(
          showBackButton: args.backFlag,
            title: Text(WordStrings.question_result_screen_title)
        ),
        body: Container(
            color: Color.fromRGBO(250, 248, 238, 1.0),
            width: double.infinity,
            height: double.infinity,

            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02, bottom: size.height * 0.01),
                  padding: EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02),
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView(
                      children: [Column(
                          children: [
                            // 日付
                            DateWidget(size: size),
                            //　画像
                            Container(
                              width: size.width * 1,
                              height: size.height * 0.15,
                              child: Image.asset(
                                  'images/question_result/hana_' + hanaPicture + '.png'),
                            ),
                            // 今日の気分
                            TodayFeelWidget(size: size, todayFeel: answers['todayFeel']),

                            // 横並び
                            Container(
                              padding: EdgeInsets.only(top: size.height * 0.03),
                              alignment: Alignment(0, -1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //　強さ
                                  StrengthWidget(size: size, strength: answers['strength']),
                                  // 頻度
                                  FrequencyWidget(size: size, frequency: answers['frequency']),
                                ],
                              ),
                            ),
                            // 理由
                            ReasonWidget(size: size, reason: answers['reason'],),
                            // アクション
                            ActionWidget(size: size, action: answers['action']),
                            // その後の気分
                            AfterFeelWidget(size: size, afterFeel: answers['afterFeel']),
                            // フリーメモ
                            FreeMemoWidget(size: size, freeMemo: answers['freeMemo']),
                          ]
                      )
                      ]
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}


















































































