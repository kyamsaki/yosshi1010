import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/extensions/base_extension.dart';

class WheelOfEmotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(runtimeType.toString()),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => onTransition(PathStrings.question, context),
                  child: Text(PathStrings.question),
                ),
                ElevatedButton(
                  onPressed: () => onTransition(PathStrings.emotionGuide, context),
                  child: Text(PathStrings.emotionGuide),
                ),
              ],
            ),
          )
        ),
        onWillPop: () => Future(() => false)
    );
  }
}