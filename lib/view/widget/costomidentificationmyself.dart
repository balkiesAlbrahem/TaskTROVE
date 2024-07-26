import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

class costomidentificationmyself extends StatelessWidget {
  const costomidentificationmyself(
      {super.key, required this.myname, required this.spec_});
  final String myname;
  final String spec_;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        costomtitlebegin(
          title: myname,
          fontSize: 17,
          fontWeight: FontWeight.w500,
          mycolor: AppColor.black,
        ),
        Text(
          spec_,
          style: const TextStyle(
            fontFamily: 'PlayfairDisplay',
            color: AppColor.greenFuscous,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            // fontFamily: "LibreBaskerville",
          ),
        ),
      ],
    );
  }
}
