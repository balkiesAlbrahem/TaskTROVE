import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class costomtext extends StatelessWidget {
  const costomtext({super.key, required this.text, required this.color, required this.fontFamily});
  final String text;
  final Color color;
  final String fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        // fontFamily: "LibreBaskerville",
      ),
    );
  }
}
