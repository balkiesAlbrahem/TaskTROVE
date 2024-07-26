// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/setnewpassword.dart';
import 'package:progectbalkies/view/widget/costombodyaftertitle.dart';
import 'package:progectbalkies/view/widget/costomtitletextauth.dart';

class otpPage extends StatelessWidget {
  otpPage({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          //

          foregroundColor: AppColor.gren,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          // backgroundColor: AppColor.moov,
          title: Text(
            "Verification Code",
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: AppColor.gren,
                fontSize: 20,
                fontFamily: 'PlayfairDisplay'),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            // AppColor.green3,
            // AppColor.green2,
            // AppColor.green1,
            AppColor.greentop,
            AppColor.moov,
            // AppColor.primaryColor,
            // AppColor.primaryColor2,
            AppColor.blue
            // Colors.deepOrange,
            // Colors.orangeAccent,
          ])),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(
                height: 200,
              ),
              const CustomTextTitleAuth(
                text: "Chick Code",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyouth(
                textbody: "Please Enter the Digit Code Send to  $email",
              ),
              const SizedBox(
                height: 40,
              ),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: AppColor.black,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  Get.to(ReSetPassword());
                }, // end onSubmit
              ),
            ],
          ),
        ));
  }
}
