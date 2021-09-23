import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWidget extends StatelessWidget {
  final Size size;
  DateWidget({required this.size});
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy/MM/dd（E）');
    String _formatted = formatter.format(now);
    return Container(
      margin: EdgeInsets.all(size.width * 0.01),
      padding: EdgeInsets.only(left: size.width * 0.04,right: size.width * 0.04,top: size.height * 0.01,bottom: size.height * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Container(
        child: Text(_formatted,
          style: TextStyle(
              fontSize: 20
          ),
        ),
      ),
    );
  }
}