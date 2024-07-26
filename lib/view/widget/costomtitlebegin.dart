import 'package:flutter/material.dart';

// ignore: camel_case_types
class costomtitlebegin extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color mycolor;
  const costomtitlebegin(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.fontWeight, required this.mycolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: mycolor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'PlayfairDisplay',
          ),
        ),
      ],
    );
  }
}
