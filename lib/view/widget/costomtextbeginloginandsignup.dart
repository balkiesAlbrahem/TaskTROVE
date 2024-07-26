import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class begintextlogsign extends StatelessWidget {
  final String fonttext;
  final String endtext;
  final Color color;
  final Color color2 = AppColor.blue;
  const begintextlogsign(
      {super.key,
      required this.fonttext,
      required this.endtext,
      required this.color,
      color2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                fonttext,
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  // fontWeight: FontWeight.w900,
                  color: color,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                endtext,
                style: TextStyle(color: color2, fontSize: 15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
