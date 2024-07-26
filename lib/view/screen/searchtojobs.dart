import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomtextfieldseach.dart';

class Searchtojobs extends StatelessWidget {
  const Searchtojobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // titleSpacing: 100,
        centerTitle: true,
        title: const Text(
          "Search",
          style: const TextStyle(
            fontFamily: 'PlayfairDisplay',
            color: AppColor.black,
            fontSize: 26,
            fontWeight: FontWeight.w600,
            // fontFamily: "LibreBaskerville",
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
              )),
        ),
      ),
      body: ListView(
        children: [
          const costomtextfieldseach(),
          Stack(
            children: [
              Lottie.asset(
                "assets/lottie/lottioearth.json",
                height: 600,
                reverse: true,
              ),
              Lottie.asset("assets/lottie/lottioSearch.json", height: 500),
              Positioned(
                  right: 100,
                  child: Lottie.asset("assets/lottie/lottioSearch.json",
                      height: 90)),
              Positioned(
                left: 160,
                bottom: 100,
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: AppColor.black12,
                      borderRadius: BorderRadius.circular(60)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
