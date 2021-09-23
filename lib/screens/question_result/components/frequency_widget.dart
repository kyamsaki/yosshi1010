import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequencyWidget extends StatelessWidget {
  final Size size;
  final String frequency;
  FrequencyWidget({required this.size,required this.frequency});
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 頻度　
        Container(
          height: size.height * 0.1,
          width: size.width * 0.15,
          child: const Text("頻度",
            style: TextStyle(
                fontSize: 18
            ),),
        ),
        Container(
          //padding: EdgeInsets.only(top: 4,bottom: 4),
          height: size.height * 0.1,
          width: size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Image.asset('images/question_result/'+ frequency +'.png'),
        ),
      ],
    );
  }
}