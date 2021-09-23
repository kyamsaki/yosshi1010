import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/components/custom_appbar.dart';

class EmotionGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MultiLeadsAppBar(
        title: Text(runtimeType.toString()),
      ),
      body: Container(),
    );
  }
}