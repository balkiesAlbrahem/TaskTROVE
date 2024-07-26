import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomcard.dart';

// ignore: must_be_immutable, camel_case_types
class jobs extends StatelessWidget {
  jobs({super.key});
  List<String> imagePaths = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: AppColor.yallo,
                  size: 30,
                )),
          ],
          title: const Text(
            "category",
            style: TextStyle(
              fontSize: 28,
              fontFamily: "FrederickatheGreat",
            ),
          ),
          centerTitle: true,
          toolbarHeight: 50,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                //Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.yallo,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 70,
          ),
          child: GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 70,
            ),
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return costomcard(
                image: imagePaths[index],
                index: index,
              );
            },
          ),
        ));
  }
}
