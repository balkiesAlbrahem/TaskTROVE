import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/linkapi.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/helper/show_snakbar.dart';
import 'package:progectbalkies/view/screen/home2.dart';
import 'package:progectbalkies/view/screen/otpPage.dart';
import 'package:progectbalkies/view/screen/signup.dart';
import 'package:progectbalkies/view/widget/costombottom.dart';
import 'package:progectbalkies/view/widget/costomsigntosignup.dart';
import 'package:progectbalkies/view/widget/costomtextbeginloginandsignup.dart';
import 'package:progectbalkies/view/widget/costomtextfeild.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable, camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  String? email;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  Myservices myservices = Get.find();
  Future loginAuth(String email, String password) async {
    var response = await http.post(
        Uri.parse(
          linklogin,
        ),
        body: <String, String>{
          'email': email,
          'password': password,
        });
    if (response.statusCode == 200) {
      var js = jsonDecode(response.body);
      String token = js['access_token'];
      int id = js['user']['id'];
      String name1 = js['user']['name'];
      String email1 = js['user']['email'];
////////////
      ///
      await myservices.sharedPreferences.setInt('id', id);
      await myservices.sharedPreferences.setString('token', token);
      await myservices.sharedPreferences.setString('name1', name1);
      await myservices.sharedPreferences.setString('email1', email1);
      print(
          'myservices.sharedPreferences.setString : ${myservices.sharedPreferences.getString('token')}');

      ///
      print('the token is $token');
      Get.offAll(const home2());
    } else if (response.statusCode == 401 || response.statusCode == 400) {
      showSnackBar(context,
          "This email does not exist && There is no account on this email");
      print(response.body);
      print(response.statusCode);
    } else {
      print(response.statusCode);
    }
  }

//  late bool ispass =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 30),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                // AppColor.moov,
                // // AppColor.primaryColor2,
                // AppColor.primaryColor,
                AppColor.greentop,
                AppColor.moov,
                AppColor.blue,
              ]),
            ),
            child: Padding(
              padding: EdgeInsets.all(80),
              child: begintextlogsign(
                color: AppColor.white,
                fonttext: "TaskTrove",
                endtext: '',
              ),
            ),
          ),
          Positioned(
            child: mycardlogin(),
          ),
        ],
      ),
    );
  }

  Padding mycardlogin() {
    return Padding(
      padding: const EdgeInsets.only(top: 230, left: 15, right: 15, bottom: 50),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        const begintextlogsign(
                          color: AppColor.blue,
                          fonttext: "Log In",
                          endtext: "Welcome Back",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextForm(
                          mycontroller: emailcontroller,
                          iconData: Icons.phone_outlined,
                          hintText: "enten the email ",
                          labelText: "email",
                          valid: (val) {
                            return null;

                            // return ValidInput(val!, 2, 1000, "username");
                          },
                          onChanged: (data) {
                            email = data;
                          },
                          isNumber: false,
                        ),
                        CustomTextForm(
                          mycontroller: passwordcontroller,
                          iconData: Icons.lock_outline,
                          hintText: "enten your password ",
                          labelText: "password",
                          valid: (val) {
                            return null;

                            // return ValidInput(val!, 2, 1000, "username");
                          },
                          onChanged: (data) {
                            // trad_name = data;
                          },
                          isNumber: false,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                print(email);
                                Get.to(
                                  otpPage(
                                    email: email!,
                                  ),
                                );
                              },
                              child: const Text(
                                "forget password ! ",
                                style: TextStyle(
                                  // fontFamily: "QwitcherGrypen",
                                  fontSize: 14,
                                  color: AppColor.blue,
                                  // color: AppColor.green3,
                                  // fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomBotton(
                          text: "LogIn",
                          onPressed: () {
                            //  print("YYYYes");
                            loginAuth(
                                emailcontroller.text, passwordcontroller.text);
                            // Get.to(const home2());
                          },
                        ),
                        CustomTextSignUporSignIn(
                            textone: "don't have an account?",
                            texttow: "  Sign Up",
                            onTap: () {
                              Get.to(SignUp());
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
