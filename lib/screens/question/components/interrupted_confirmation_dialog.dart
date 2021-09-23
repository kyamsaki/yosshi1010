import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constants/word_strings.dart';

class InterruptedConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: Text(WordStrings.question_back_attention_title)),
      content: Center(child: Text(WordStrings.question_back_attention_content)),
      scrollable: true,
      actions: <Widget>[
        // ボタン領域
        ElevatedButton(
          child: Text(WordStrings.alert_cancel),
          onPressed: () => Navigator.pop(context, false),
        ),
        ElevatedButton(
          child: Text(WordStrings.alert_accept),
          onPressed: () => Navigator.pop(context, true),
        ),
      ],
    );
  }
}