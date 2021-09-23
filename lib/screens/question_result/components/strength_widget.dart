import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StrengthWidget extends StatelessWidget {
  final Size size;
  final String strength;
  StrengthWidget({required this.size,required this.strength});
  final Map strengthPictureType = <String,String>{'非常に強く感じている':'5',
    '強く感じている':'4',
    '普通に感じている':'3',
    'まあまあ感じている':'2',
    '少し感じている':'1'};
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size.height * 0.1,
          width: size.width * 0.15,
          child: const Text("強さ",
            style: TextStyle(
                fontSize: 18
            ),),
        ),
        Container(
          //padding: EdgeInsets.only(top: 4,bottom: 4),
          width: size.width * 0.25,
          height: size.height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Image.asset('images/question_result/strength'+ strengthPictureType[strength] +'.png'),
        ),
      ],
    );
  }
}