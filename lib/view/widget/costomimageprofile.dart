import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class imagesmoleprofile extends StatelessWidget {
  final String image;
  const imagesmoleprofile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.white),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 5,
            // color: AppColor.mooov.withOpacity(0.9),
            color: AppColor.yallo.withOpacity(0.19),
          ),
        ],
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    );
  }
}
