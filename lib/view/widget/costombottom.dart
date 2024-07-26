import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class CustomBotton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBotton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              AppColor.greentop,
              // AppColor.moov,
              AppColor.primaryColor,
              // AppColor.primaryColor2,
              AppColor.blue,
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 5),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 130),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: onPressed,
          // color: const Color.fromARGB(255, 183, 96, 119),
          // color: AppColor.moov,
          // color: AppColor.green3,
          textColor: AppColor.white,
          child: Text(
            text,
            style: const TextStyle(
              // fontWeight: FontWeight.bold,
              // fontFamily: "FrederickatheGreat",
              fontSize: 15,
              // fontFamily: "playfiarDisplay"
            ),
          ),
        ),
      ),
    );
  }
}
