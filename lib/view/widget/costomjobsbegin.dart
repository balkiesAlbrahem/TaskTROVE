import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';

// ignore: camel_case_types
class costomJobsbegin extends StatelessWidget {
  final String nameCompany;
  final String nameJobs;
  final String timeJobs;
  final String placeJobs;
  final String image;
  final Color backgroundcolor;
  final Color backtextcolor;
  const costomJobsbegin(
      {super.key,
      required this.nameCompany,
      required this.nameJobs,
      required this.timeJobs,
      required this.placeJobs,
      required this.image,
      required this.backgroundcolor,
      required this.backtextcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundcolor, borderRadius: BorderRadius.circular(50)),
      height: 150,
      width: 360,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imagesmoleprofile(
                  image: image,
                ),
                SizedBox(
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
                  style: TextStyle(
                    color: backtextcolor,
                    fontSize: 13,
                  ),
                ),
                Text(
                  placeJobs,
                  style: TextStyle(
                    color: backtextcolor,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
