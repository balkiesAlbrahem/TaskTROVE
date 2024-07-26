import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class costomconstant extends StatelessWidget {
  const costomconstant({super.key, required this.titleconst});
  final String titleconst;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              titleconst,
              style: const TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: AppColor.greenFuscous,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                // fontFamily: "LibreBaskerville",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 150,
              height: 1,
              color: AppColor.gren,
            ),
          ],
        ),
      ],
    );
  }
}

class costomconstant2 extends StatelessWidget {
  const costomconstant2({super.key, required this.titleconst});
  final String titleconst;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              titleconst,
              style: const TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: AppColor.greenFuscous,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                // fontFamily: "LibreBaskerville",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
              height: 1,
              color: AppColor.gren,
            ),
          ],
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class costomconstant3 extends StatelessWidget {
  const costomconstant3({super.key, required this.titleconst});
  final String titleconst;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              width: 50,
            ),
            Text(
              titleconst,
              style: const TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: AppColor.greentop,
                // color: AppColor.black,
                fontSize: 40,
                fontWeight: FontWeight.w600,
                // fontFamily: "LibreBaskerville",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 240,
                height: 1,
                color: AppColor.greentop2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
