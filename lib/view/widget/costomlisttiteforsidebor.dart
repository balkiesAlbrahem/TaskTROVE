import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class listTitlesidebor extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onpressed;
  const listTitlesidebor(
      {super.key, required this.icon, required this.title, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
            color: AppColor.greenFuscous,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            // Icons.light_mode_outlined,
            color: AppColor.greenFuscous,
          )),
    );
  }
}
