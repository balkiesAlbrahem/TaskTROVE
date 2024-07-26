import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomnameforcomany extends StatelessWidget {
  const costomnameforcomany(
      {super.key, required this.namecompany, required this.secondname});
  final String namecompany;
  final String secondname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Text(
            namecompany,
            style: TextStyle(
              color: AppColor.white,
              fontFamily: 'PlayfairDisplay',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            secondname,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColor.greenFuscous,
              fontFamily: 'PlayfairDisplay',
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
