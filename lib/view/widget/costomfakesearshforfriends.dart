import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/screensearchforfriends.dart';

class costomfakesearshforfriends extends StatelessWidget {
  const costomfakesearshforfriends({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          Searchtofriends(),
        );
      },
      child: Container(
        height: 55,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.white,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(
                Icons.search_sharp,
                color: AppColor.greenFuscous,
              ),
              Text(
                "     Searsh friends for you ",
                style: TextStyle(
                  color: AppColor.gren,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlayfairDisplay',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
