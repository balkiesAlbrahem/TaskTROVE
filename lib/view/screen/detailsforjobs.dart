import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/jobModel.dart';
import 'package:progectbalkies/view/widget/costombegendetailsjobs.dart';
import 'package:progectbalkies/view/widget/costombottomapplyjobs.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

// ignore: camel_case_types
class detailsforjobs extends StatelessWidget {
  const detailsforjobs({super.key, required this.job});
  final jobModel job;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
        centerTitle: true,
        title: const Text(
          'Details Job',
          style: TextStyle(
            color: AppColor.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "PlayfairDisplay",
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: AppColor.greentop2,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/image/google-image.png'),
                      ),
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Microsoft",
                        style: TextStyle(
                          color: AppColor.black,
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Ux developer',
                        style: TextStyle(
                          color: AppColor.greenFuscous,
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              /////
              const SizedBox(
                height: 10,
              ),
              ////////////////
              const Costombegendetailsjobs(
                location: "jaban",
                salary: '300k',
                time: 'Full Time',
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    costomtitlebegin(
                      mycolor: AppColor.black,
                      title: 'Job Description',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Reloaded 1loaded 1 of 1767 libraries in 721ms (compile: 30 msloaded 1 of 1767 libraries in 721ms (compile: 30 ms of 1767 libraries in 721ms (compile: 30 ms, reload: 209 ms, reassemble 397 ms)",
                      style: TextStyle(
                          fontFamily: "LibreBaskerville", fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    costomtitlebegin(
                      mycolor: AppColor.black,
                      title: 'Job Requirements',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "209 ms, reassemble 397 ms)",
                          style: TextStyle(
                              fontFamily: "LibreBaskerville", fontSize: 14),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        costomtitlebegin(
                          mycolor: AppColor.black,
                          title: 'Category :',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "IT",
                          style: TextStyle(
                              fontFamily: "LibreBaskerville", fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.greentop,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outline,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Costombottomapplyjobs(),
                ],
              )),
        ],
      ),
    );
  }
}
