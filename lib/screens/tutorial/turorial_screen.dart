import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/extensions/base_extension.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(runtimeType.toString()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => onTransition(PathStrings.emotionGuide, context),
          child: Text(PathStrings.emotionGuide),
        ),
      ),
    );
  }
}