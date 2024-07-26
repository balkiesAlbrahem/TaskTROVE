import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class buildtextfeild extends StatelessWidget {
//  bool isOcsetpass;
  final String labeltext;
  final String spaceholder;
  final bool ispassword;
  final TextEditingController mycontroller;
  const buildtextfeild(
      {super.key,
      required this.labeltext,
      required this.spaceholder,
      required this.ispassword,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: mycontroller,
          obscureText: ispassword ? true : false,
          decoration: InputDecoration(
              suffixIcon: ispassword
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: AppColor.mooov,
                      ))
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: spaceholder,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.mov)),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class buildtextfeild2 extends StatelessWidget {
//  bool isOcsetpass;
  final String labeltext;
  final String spaceholder;
  final bool ispassword;
  final TextEditingController mycontroller;
  const buildtextfeild2(
      {super.key,
      required this.labeltext,
      required this.spaceholder,
      required this.ispassword,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: mycontroller,
          obscureText: ispassword ? true : false,
          decoration: InputDecoration(
              suffixIcon: ispassword
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: AppColor.greentop,
                      ))
                  : null,
              contentPadding: const EdgeInsets.only(bottom: 5),
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: spaceholder,
              hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greentop)),
        ),
      ),
    );
  }
}
