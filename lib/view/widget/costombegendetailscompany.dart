import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class CostombegendetailsCompany extends StatelessWidget {
  const CostombegendetailsCompany(
      {super.key,
      required this.location,
      required this.salary,
      required this.time});
  final String location;
  final String salary;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColor.greentop2),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.place_outlined,
                  color: AppColor.greentop,
                  size: 30,
                ),
                Text(location)
              ],
            ),
            Container(
              width: 1,
              height: 40,
              color: Colors.white,
            ),
            Column(
              children: [
                const Icon(
                  Icons.donut_large,
                  color: AppColor.greentop,
                  size: 30,
                ),
                Text(salary)
              ],
            ),
            Container(
              width: 1,
              height: 40,
              color: Colors.white,
            ),
            Column(
              children: [
                const Icon(
                  Icons.place_outlined,
                  color: AppColor.greentop,
                  size: 30,
                ),
                Text(time)
              ],
            )
          ],
        ),
      ),
    );
  }
}
