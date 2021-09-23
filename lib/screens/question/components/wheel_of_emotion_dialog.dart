import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:home_project/components/gesture_text.dart';
import 'package:home_project/components/wheel_of_emotion.dart';
import 'package:home_project/entities/emotion.dart';


class WheelOfEmotionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Center(
        child: Text("どんな感情になりましたか？"),
      ),
      content: Stack(
        alignment: Alignment.center,
        children: [
          Image(image: AssetImage("images/flower.png")),
          Padding(
            padding: EdgeInsets.only(bottom: 90),
            child: GestureText(Emotion.Ecstasy, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 70, left: 70),
            child: GestureText(Emotion.Admiration, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(left: 80),
            child: GestureText(Emotion.Terror, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65, top: 55),
            child: GestureText(Emotion.Amazement, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(top: 80),
            child: GestureText(Emotion.Grief, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(right: 60, top: 60),
            child: GestureText(Emotion.Loathing, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(right: 70),
            child: GestureText(Emotion.Rage, onTap),
          ),
          Padding(
            padding: EdgeInsets.only(right: 65, bottom: 65),
            child: GestureText(Emotion.Ecstasy, onTap),
          )
        ],
      )
    );
  }

  void onTap(context, type) {
    Navigator.pop(context, type);
  }
}