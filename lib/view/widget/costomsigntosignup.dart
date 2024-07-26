import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: must_be_immutable
class CustomTextSignUporSignIn extends StatelessWidget {
  final String textone;
  final String texttow;
  void Function() onTap;
  CustomTextSignUporSignIn(
      {super.key,
      required this.textone,
      required this.texttow,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          textone,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "PlayfairDisplay",
            color: AppColor.blue,
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            texttow,
            style: const TextStyle(
              fontFamily: "PlayfairDisplay",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.blue,
            ),
          ),
        )
      ],
    );
  }
}
