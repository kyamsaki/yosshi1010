import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/constants/word_strings.dart';
import 'package:home_project/entities/emotion.dart';
import 'package:home_project/entities/question.dart';
import 'package:home_project/entities/question_and_answer.dart';
import 'package:home_project/entities/question_type.dart';
import 'package:home_project/models/question_screen.dart';
import 'package:home_project/screens/question/components/wheel_of_emotion_dialog.dart';
import 'package:home_project/screens/question/components/interrupted_confirmation_dialog.dart';
import 'package:home_project/extensions/base_extension.dart';
import 'package:home_project/screens/question_result/to_question_result.dart';

class QuestionScreen extends StatefulWidget {
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<ChatMessage> _messages = [];

  final ChatUser _user = ChatUser();
  final ChatUser _bot = ChatUser();
  final FocusNode _focus = FocusNode();

  late final Emotion _emotionType;
  late final List<QuestionEntity> questions;
  final ScrollController _controller = ScrollController();

  int _questionIndex = 0;
  bool _isInputDisable = true;
  bool _isOpenWheelOfEmotion = false;
  List<QuestionAndAnswer> qAndA = [];

  @override
  void initState() {
    super.initState();
    questions = QuestionScreenModel.getQuestions();
    _emotionType = Emotion.Rage; //ModalRoute.of(context)?.settings.arguments as DummyType;
    _messages.add(getNextQuestion());
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback(afterBuild);

    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
                title: Text(WordStrings.question_screen_title)
            ),
            body: DashChat(
              messages: _messages,
              user: _user,
              dateFormat: DateFormat('yyyy/MM/dd'),
              timeFormat: DateFormat.Hm(),
              onSend: onSend,
              focusNode: _focus,
              onLoadEarlier: (){},
              onQuickReply: onReply,
              quickReplyScroll: true,
              inputDisabled: _isInputDisable,
              scrollController: _controller,
            )
        ),
        onWillPop: () {
          return Future(() => _showConfirmDialog());
        }
    );
  }

  void onSend(message) {
    setState(() {
      _messages.add(message);
      _messages.add(getNextQuestion());
    });
  }

  void onReply(reply) {
    setState(() {
      var message = ChatMessage(
          text: reply.title,
          user: _user
      );
      _messages.add(message);
      _messages.add(getNextQuestion());
    });
  }

  ChatMessage getNextQuestion() {
    var question = questions[_questionIndex];
    var message = ChatMessage(
      text: question.question,
      user: _bot,
      quickReplies: QuickReplies(
        values: question.answers.map((e) => Reply(title: e)).toList()
      )
    );
    var isNotInputQuestionType = question.type == QuestionType.Finish || question.type == QuestionType.Emotion;
    setState(() {
      _isInputDisable = question.answers.isNotEmpty || isNotInputQuestionType;
      _isOpenWheelOfEmotion = question.isOpenWheelOfEmotion;
    });
    _questionIndex += 1;
    return message;
  }

  void afterBuild(_) {
    if (_isInputDisable) {
      _focus.unfocus();
      if (_isOpenWheelOfEmotion) {
        _showWheelOfEmotionDialog().then((value) {
          onReply(Reply(title: value.name));
        });
      }
    } else {
      _focus.requestFocus();
    }

    if (questions[_questionIndex-1].type == QuestionType.Finish) {
      toResultPage();
    }
  }

  Future<bool> _showConfirmDialog() async {
    return showDialog(
        context: context,
        builder: (_) => InterruptedConfirmationDialog()
    ).then((value) => value);
  }

  Future<Emotion> _showWheelOfEmotionDialog() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => WheelOfEmotionDialog()
    ).then((value) => value);
  }

  void toResultPage() {
    QuestionScreenModel.save(
        _emotionType,
        _messages.first.createdAt,
        _messages,
        questions,
        _user
    );
    onTransition(PathStrings.questionResult, context, arguments: ToQuestionResult(_messages.first.createdAt,false));
  }
}
