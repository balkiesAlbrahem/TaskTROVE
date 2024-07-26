import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: must_be_immutable
class costomsidemenulist extends StatelessWidget {
  costomsidemenulist({
    super.key,
  });
  bool isactive = false;
//   final String title;
//   final IconData icon;
//  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              height: 56,
              width: isactive ? 250 : 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // isactive = true;
              },
              leading: const SizedBox(
                height: 34,
                width: 34,
                child: Icon(Icons.home_outlined),
              ),
              title: const Text(
                "HOME",
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  color: AppColor.greenFuscous,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  // fontFamily: "LibreBaskerville",
                ),
              ),
            ),
          ],
        ),
        const Divider(
          endIndent: 200,
          color: AppColor.gren,
          height: 1,
        )
      ],
    );
  }
}
