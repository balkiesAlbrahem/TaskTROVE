import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class CustomTextBodyouth extends StatelessWidget {
  final String textbody;
  const CustomTextBodyouth({super.key, required this.textbody});

  @override
  Widget build(BuildContext context) {
    return Text(
      textbody,
      style: TextStyle(
        fontFamily: 'PlayfairDisplay',
        // fontWeight: FontWeight.w600,
        // color: AppColor.gren,
        color: AppColor.white,
        fontSize: 14,
        // fontWeight: FontWeight.w700,
      ),
      textAlign: TextAlign.center,
    );
  }
}
