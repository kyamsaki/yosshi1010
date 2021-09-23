import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/entities/emotion.dart';

import 'gesture_text.dart';

class WheelOfEmotion extends StatelessWidget {
  final Function onTap;

  WheelOfEmotion(this.onTap);

  @override
  Widget build(BuildContext context) {
    // 中心からの割合(相対位置)で感情名のテキスト位置を決定
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(image: AssetImage("images/flower.png")),
        Align(
          alignment: Alignment(0, -0.12),
          child: GestureText(Emotion.Ecstasy, onTap),
        ),
        Align(
          alignment: Alignment(0.25, -0.1),
          child: GestureText(Emotion.Admiration, onTap),
        ),
        Align(
          alignment: Alignment(0.31, -0.01),
          child: GestureText(Emotion.Terror, onTap),
        ),
        Align(
          alignment: Alignment(0.20, 0.08),
          child: GestureText(Emotion.Amazement, onTap),
        ),
        Align(
          alignment: Alignment(0, 0.13),
          child: GestureText(Emotion.Grief, onTap),
        ),
        Align(
          alignment: Alignment(-0.25, 0.09),
          child: GestureText(Emotion.Loathing, onTap),
        ),
        Align(
          alignment: Alignment(-0.3, 0),
          child: GestureText(Emotion.Rage, onTap),
        ),
        Align(
          alignment: Alignment(-0.22, -0.09),
          child: GestureText(Emotion.Vigilance, onTap),
        ),
      ],
    );
  }
}