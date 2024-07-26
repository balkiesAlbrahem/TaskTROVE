import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class Costomdetialsfrontjobs extends StatelessWidget {
  const Costomdetialsfrontjobs(
      {super.key,
      required this.titlejob,
      required this.titleplace,
      required this.titletimeandwhen,
      required this.salary});
  final String titlejob;
  final String titleplace;
  final String titletimeandwhen;
  final String salary;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  titlejob,
                  style: const TextStyle(
                    color: AppColor.black,
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Text(
                  salary,
                  style: const TextStyle(
                    color: AppColor.greentop,
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: AppColor.greenFuscous,
                  size: 20,
                ),
                Text(
                  titleplace,
                  style: const TextStyle(
                    color: AppColor.greenFuscous,
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Row(
                children: [
                  Text(
                    titletimeandwhen,
                    style: const TextStyle(
                      color: AppColor.greenFuscous,
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
