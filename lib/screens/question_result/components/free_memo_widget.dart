import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/screens/question_result/common_function.dart';

class FreeMemoWidget extends StatelessWidget {
  final Size size;
  final String freeMemo;
  FreeMemoWidget({required this.size, required this.freeMemo});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.width * 0.01),
      child: Column(
        children: [
          Container(
            height: size.height * 0.06,
            width: size.width * 1,
            padding: EdgeInsets.only(top: size.width * 0.01),
            child: const Text("フリーメモ",
              style: TextStyle(
                  fontSize: 17
              ),),
          ),
          Container(
            padding: EdgeInsets.all(size.width * 0.02),
            width: size.width * 1,
            height: size.height * (0.07 + (0.05 * CommonFunction().defineLineNumber(freeMemo))),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text(freeMemo,
              style: TextStyle(
                  fontSize: 20
              ),),
          )
        ],
      ),
    );
  }
}