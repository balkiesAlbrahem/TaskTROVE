import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text;
  const CustomTextTitleAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontSize: 60,
            // color: AppColor.black,
            fontFamily: 'PlayfairDisplay',
            // fontWeight: FontWeight.w900,
            color: AppColor.white,
          ),
      textAlign: TextAlign.center,
    );
  }
}
