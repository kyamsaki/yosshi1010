import 'package:flutter/cupertino.dart';
import 'package:home_project/entities/emotion.dart';

// タップ判定付きテキストのウェジェット
class GestureText extends StatelessWidget {
  final Emotion type;
  final Function callback;

  GestureText(this.type, this.callback);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback(context, type);
      },
      child: Text(type.name),
    );
  }
}