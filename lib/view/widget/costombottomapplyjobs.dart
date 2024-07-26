import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class Costombottomapplyjobs extends StatelessWidget {
  const Costombottomapplyjobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      padding: const EdgeInsets.only(top: 5),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 110),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        color: AppColor.greentop,
        textColor: AppColor.white,
        child: const Text(
          "Apply Now",
          style: TextStyle(
            fontFamily: "PlayfairDisplay",
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
