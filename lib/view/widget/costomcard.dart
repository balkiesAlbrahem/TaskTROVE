import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/jobsnumberscreen.dart';

// ignore: must_be_immutable, camel_case_types
class costomcard extends StatelessWidget {
  costomcard({super.key, required this.index, required this.image});
  final int index;
  final String image;
  final List<String> imagePaths = [
    'assets/image/imageCar-removebg-preview.png',
    'assets/image/imagedream-removebg-preview.png',
    'assets/image/imageheart-removebg-preview.png',
    'assets/image/imageIt-removebg-preview.png',
    'assets/image/imageteacher-removebg-preview (1).png',
    'assets/image/imageteacher-removebg-preview.png',
    'assets/image/imageteacher-removebg-preview.png',
    'assets/image/imageCar-removebg-preview.png',
    'assets/image/imagedream-removebg-preview.png',
    'assets/image/imageheart-removebg-preview.png',
    'assets/image/imageIt-removebg-preview.png',
    'assets/image/imageheart-removebg-preview.png',
    'assets/image/imageIt-removebg-preview.png',
    'assets/image/imageteacher-removebg-preview (1).png',
    'assets/image/imageteacher-removebg-preview.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          // height: 140,
          // width: 160,
          decoration: const BoxDecoration(
              // color: AppColor.white,
              //    boxShadow: [
              //   BoxShadow(
              //       blurRadius: 10,
              //       color: AppColor.gren,
              //       spreadRadius: 0,
              //       offset: Offset(2, 2)),
              // ],
              ),
          child: GestureDetector(
            onTap: () {
              Get.to(const jobsnumber());
            },
            child: Card(
              color: AppColor.white,
              // color: const Color.fromARGB(178, 5, 209, 12),
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "mebicen",
                      style: TextStyle(color: AppColor.black, fontSize: 20),
                    ),
                    Row(
                      children: [
                        InkWell(onTap: () {}, child: const Text("200 jobs")),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(Icons.favorite_border_outlined),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          right: 50,
          child:
              // Column(
              //   children: [
              //     Image(
              //       height: 100,
              //       image: AssetImage(
              //         imagePaths[index],
              //       ),
              //     ),
              //     const Divider(
              //       color: AppColor.black,
              //     ),
              //   ],
              // ),
              Container(
            margin: const EdgeInsets.only(bottom: 10),

            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: AppColor.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imagePaths[index],
                ),
                // fit: BoxFit.scaleDown
                // fit: BoxFit.fitHeight,
              ),
            ),
            // child: const Icon(
            //   Icons.access_alarm,
            //   size: 40,
            // ),
          ),
        ),
      ],
    );
  }
}
