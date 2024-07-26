import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class costomrowlist extends StatelessWidget {
  const costomrowlist({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });
  final IconData icon;
  final String text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: ontap,
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColor.gren,
            ),
            Container(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.black,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class costomrowlist2 extends StatelessWidget {
  const costomrowlist2({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });
  final IconData icon;
  final String text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: ontap,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.redAccent,
            ),
            Container(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
