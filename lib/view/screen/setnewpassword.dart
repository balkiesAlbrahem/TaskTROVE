import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/succesresetpassword.dart';
import 'package:progectbalkies/view/widget/costombodyaftertitle.dart';
import 'package:progectbalkies/view/widget/costombottom.dart';
import 'package:progectbalkies/view/widget/costomtextbeginloginandsignup.dart';
import 'package:progectbalkies/view/widget/costomtextfeild.dart';

// ignore: must_be_immutable
class ReSetPassword extends StatelessWidget {
  bool ispassword = false;
  ReSetPassword({super.key});
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

//  late bool ispass =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        // padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          AppColor.greentop,
          // AppColor.moov,
          // AppColor.primaryColor,
          AppColor.primaryColor2,
          AppColor.blue,
          AppColor.blue,
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
           Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  begintextlogsign(
                    color: AppColor.white,
                    fonttext: "ReSet Password",
                    endtext: "It is better for you to change your password",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextBodyouth(
                              textbody: "Please! Enter New Password for you",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextForm(
                              mycontroller: mobilecontroller,
                              iconData: Icons.remove_red_eye,
                              hintText: "enten your password ",
                              labelText: "Repassword",
                              valid: (val) {
                                return null;

                                // return ValidInput(val!, 2, 1000, "username");
                              },
                              onChanged: (data) {
                                // trad_name = data;
                              },
                              isNumber: false,
                            ),
                            CustomTextForm(
                              mycontroller: passwordcontroller,
                              iconData: Icons.remove_red_eye,
                              opress: () {
                                ispassword == true
                                    ? ispassword = false
                                    : ispassword = true;
                              },
                              hintText: "enten your password ",
                              labelText: "repassword",
                              valid: (val) {
                                return null;

                                // return ValidInput(val!, 2, 1000, "username");
                              },
                              onChanged: (data) {
                                // trad_name = data;
                              },
                              isNumber: false,
                            ),
                            CustomBotton(
                              text: "save",
                              onPressed: () {
                                Get.offAll(const SuccessReSetPassword());
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
