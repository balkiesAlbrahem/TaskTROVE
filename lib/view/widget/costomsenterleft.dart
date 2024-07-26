import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/Screentoveiwjobs.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

class costomcenterleft extends StatelessWidget {
  costomcenterleft({
    super.key,
    required this.firsttitle,
  });
  final String firsttitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        costomtitlebegin(mycolor: AppColor.black,
          title: firsttitle,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        InkWell(
          onTap: () {
            Get.to(veiwlistjobs(
              title: firsttitle,
            ));
          },
          child: const Text(
            'See All',
            style: TextStyle(
              color: AppColor.greentop,
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
