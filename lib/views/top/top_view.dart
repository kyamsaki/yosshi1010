import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/constants/path_strings.dart';
import 'package:home_project/extensions/base_extension.dart';

class TopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          onTransition(PathStrings.wheelOfEmotion, context);
        },
        child: Text(PathStrings.wheelOfEmotion),
      ),
    );
  }
}