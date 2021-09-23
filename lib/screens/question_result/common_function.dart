import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonFunction {

  Color getFeelColor(String feeling){
    if(feeling == '歓喜')
      return Color.fromRGBO(245, 226, 130, 1.0);
    if(feeling == '敬愛')
      return Color.fromRGBO(178, 229, 124, 1.0);
    if(feeling == '恐怖')
      return Color.fromRGBO(37, 186, 37, 1.0);
    if(feeling == '驚嘆')
      return Color.fromRGBO(155, 188, 222, 1.0);
    if(feeling == '悲嘆')
      return Color.fromRGBO(87, 129, 238, 1.0);
    if(feeling == '嫌悪')
      return Color.fromRGBO(137, 60, 215, 1.0);
    if(feeling == '激怒')
      return Color.fromRGBO(248, 110, 110, 1.0);
    if(feeling == '警戒')
      return Color.fromRGBO(217, 150, 100, 1.0);
    return Color.fromRGBO(250, 248, 238, 1.0);
  }

  int defineLineNumber(String inputLetter){

    int letterLength = inputLetter.length;
    int letterCount  = 0;

    for(var i = 0; i < letterLength; i++ ) {
      if(Runes(inputLetter.substring(i,i+1)).toString().length == 7) {
        letterCount += 2;
      }else {
        letterCount += 1;
      }
    }

    int addLine = letterCount ~/ 30;
    return addLine;
  }
}
