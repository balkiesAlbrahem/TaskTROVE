import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/login.dart';
import 'package:progectbalkies/view/widget/costombodyaftertitle.dart';
import 'package:progectbalkies/view/widget/costombottom.dart';
import 'package:progectbalkies/view/widget/costomtitletextauth.dart';

class SuccessReSetPassword extends StatelessWidget {
  const SuccessReSetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: AppColor.white,
          foregroundColor: AppColor.white,
          elevation: 0.0,
          centerTitle: true,

          title: Text(
            "Success",
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: AppColor.white, fontSize: 20),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              AppColor.greentop,
              AppColor.moov,
              // AppColor.primaryColor,
              AppColor.primaryColor2,
              AppColor.blue,
            ],
          )),
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              Lottie.asset("assets/lottie/true.json", height: 250),
              const CustomTextTitleAuth(
                text: "Congrats",
              ),
              const SizedBox(
                height: 60,
              ),
              const CustomTextBodyouth(
                textbody: " you have registered successfully",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBotton(
                text: "go to Log In",
                onPressed: () {
                  Get.offAll(login());
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
