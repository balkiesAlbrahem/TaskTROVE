import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/searchtojobs.dart';

// icon iimportent -+-
  //  CupertinoIcons.slider_horizontal_3,
class costomSearckfake extends StatelessWidget {
  costomSearckfake({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const Searchtojobs());
      },
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 225, 223, 223),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.search_sharp,
                    size: 23,
                    color: AppColor.gren,
                  ),
                  Text(
                    '   Search your Job',
                    style: TextStyle(
                      color: AppColor.gren,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'PlayfairDisplay',
                    ),
                  ),
                ],
              ),
              Icon(
                CupertinoIcons.slider_horizontal_3,
                size: 23,
                color: AppColor.gren,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
