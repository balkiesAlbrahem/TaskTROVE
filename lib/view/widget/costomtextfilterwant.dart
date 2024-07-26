import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/findfolterjobs.dart';

// ignore: camel_case_types
class costomtextwantfilter extends StatelessWidget {
  const costomtextwantfilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            "Do you want to specify the details of \n the work you want ?",
            style: TextStyle(
              color: AppColor.moov,
              fontSize: 17,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(const Findfolterjobs());
          },
          icon: const Icon(
            CupertinoIcons.slider_horizontal_3,
            color: AppColor.mooov,
          ),
        ),
      ],
    );
  }
}
