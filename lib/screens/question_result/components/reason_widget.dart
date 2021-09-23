import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReasonWidget extends StatelessWidget {
  final Size size;
  final String reason;
  ReasonWidget({required this.size, required this.reason});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.02),
      alignment: Alignment(0, -1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.width * 0.12,
            padding: EdgeInsets.only(top: size.width * 0.01),
            child: const Text("理由",
              style: TextStyle(
                  fontSize: 17
              ),),
          ),
          Container(
            //padding: EdgeInsets.only(top: 4,bottom: 4),
            width: size.width * 0.55,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
                'images/question_result/' + reason + '.png',
                fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}