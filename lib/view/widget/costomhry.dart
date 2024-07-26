import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';
import 'package:get/get.dart';
class costomHeyAndName extends StatelessWidget {
  const costomHeyAndName({super.key});

  @override
  Widget build(BuildContext context) {
    Myservices myservices = Get.find();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey ${myservices.sharedPreferences.getString('name1')} ",
                  style: const TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    color: AppColor.greenFuscous,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    // fontFamily: "LibreBaskerville",
                  ),
                ),
                const Text(
                  "Discover Yor Dream Job",
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    color: AppColor.greenFuscous,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    // fontFamily: "LibreBaskerville",
                  ),
                ),
              ],
            ),
            imagesmoleprofile(
              image: "assets/image/ai-generated-8491587_1280.jpg",
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            costomtitlebegin(mycolor: AppColor.black,
              title: "Find You Big Dream Job",
              fontSize: 26,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ],
    );
  }
}
