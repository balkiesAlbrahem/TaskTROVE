import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';

// ignore: camel_case_types
class costombeginJobs extends StatelessWidget {
  final String nameCompany;
  final String nameJobs;
  final String timeJobs;
  final String placeJobs;
  const costombeginJobs(
      {super.key,
      required this.nameCompany,
      required this.nameJobs,
      required this.timeJobs,
      required this.placeJobs});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const imagesmoleprofile(
              image: "assets/image/logoo.png",
            ),
            Container(
                // color: AppColor.gren,
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nameCompany,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_outline,
                              size: 20,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          nameJobs,
                          style: const TextStyle(
                              color: AppColor.greenFuscous,
                              fontSize: 19,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              timeJobs,
              style: const TextStyle(
                color: AppColor.yallo,
                fontSize: 13,
              ),
            ),
            Text(
              placeJobs,
              style: const TextStyle(
                color: AppColor.yallo,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
