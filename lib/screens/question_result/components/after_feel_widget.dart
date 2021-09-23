import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/screens/question_result/common_function.dart';

class AfterFeelWidget extends StatelessWidget {
  final Size size;
  final String afterFeel;
  AfterFeelWidget({required this.size,required this.afterFeel});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.width * 0.04),
      alignment: Alignment(0, -1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 0.06,
            padding: EdgeInsets.only(top: size.width * 0.01),
            child: const Text("その後の気分",
              style: TextStyle(
                  fontSize: 17
              ),),
          ),
          Container(
            margin: EdgeInsets.only(left: size.width * 0.02),
            width: size.width * 0.55,
            height: size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                      width: size.width * 0.18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(100),
                        color: CommonFunction().getFeelColor(afterFeel).withOpacity(0.8),
                      ),
                      child: Text(afterFeel,
                          style: TextStyle(
                              fontSize: 20
                          ))
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}