import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomlisttite extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final void Function()? onpressed;
  const costomlisttite({
    super.key,
    required this.title,
    required this.icon,
    this.onpressed,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: AppColor.black),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: AppColor.gren),
      ),
      trailing: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            size: 22,
            color: AppColor.moov,
          )),
    );
  }
}
