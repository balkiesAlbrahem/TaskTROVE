import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomimagecircle extends StatelessWidget {
  const costomimagecircle({super.key, required this.Image});
  final String Image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(width: 7, color: AppColor.white),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 10,
            // color: AppColor.mooov.withOpacity(0.9),
            color: Colors.black.withOpacity(0.17),
          ),
        ],
        shape: BoxShape.circle,
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image/ai-generated-8491587_1280.jpg")),
      ),
    );
  }
}
