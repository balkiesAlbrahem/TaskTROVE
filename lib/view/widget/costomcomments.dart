import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomcomments extends StatelessWidget {
  final String image;
  final String name;
  final String comment;
  final DateTime time;
  final void Function() showprofile;
  costomcomments(
      {super.key,
      required this.image,
      required this.name,
      required this.comment,
      required this.time,
      required this.showprofile});

  String _dateToString(DateTime time) {
    final now = DateTime.now();

    if (now.isAfter(time)) {
      final daysSincePost = now.difference(time).inDays;

      if (daysSincePost == 0) {
        final difference = now.difference(time);
        if (difference.inHours > 0) return '${difference.inHours}h';
        if (difference.inMinutes > 0) return '${difference.inMinutes}m';
        if (difference.inSeconds > 0) return '${difference.inSeconds}s';
      }
      if (daysSincePost == 1) {
        return 'Yesterday at ${time.hour}:${time.minute}';
      }
      if (daysSincePost < 7) {
        return '$daysSincePost days ago';
      }
      if (daysSincePost < 30) {
        return '${daysSincePost ~/ 7} weeks ago';
      }
    }

    return 'At ${time.year}/${time.month}/${time.day}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: showprofile,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: AppColor.black12,
              ),
              // height: 80,
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: showprofile,
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "PlayfairDisplay",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    comment,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            Container(
              width: 90,
            ),
            Text(_dateToString(time)),
          ],
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
