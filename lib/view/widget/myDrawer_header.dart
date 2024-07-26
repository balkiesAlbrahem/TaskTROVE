// ignore: file_names
import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      color: AppColor.mooov,
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/image/person (2).jfif"),
              ),
            ),
          ),
         Text(
            "Ali Al Brahem",
            style: TextStyle(
              color: AppColor.white,
              fontSize: 20,
            ),
          ),
          const Text(
            "Balkiesblkies@gmail.com",
            style: TextStyle(
              color: AppColor.gren,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
