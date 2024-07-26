import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomtextfieldseach extends StatelessWidget {
  const costomtextfieldseach({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          label: Text(
            "Search about your jobs",
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              color: AppColor.gren,
            ),
          ),
          prefixIcon: Icon(
            Icons.search_sharp,
            size: 30,
            color: AppColor.gren,
          ),
        ),
      ),
    );
  }
}
