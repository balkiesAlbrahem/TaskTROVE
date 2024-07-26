import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/linkapi.dart';
// import 'package:progectbalkies/constants/linkapi.dart';
import 'package:progectbalkies/helper/api.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/screen/login.dart';
import 'package:progectbalkies/view/screen/profile.dart';
import 'package:progectbalkies/view/widget/costombottom.dart';
import 'package:progectbalkies/view/widget/costomsigntosignup.dart';
import 'package:progectbalkies/view/widget/costomtextbeginloginandsignup.dart';
import 'package:progectbalkies/view/widget/costomtextfeild.dart';
import 'package:http/http.dart' as http;

import '../../helper/show_snakbar.dart';

// ignore: must_be_immutable, camel_case_types
class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Api api = Api();
  Myservices myservices = Get.find();
  TextEditingController namecontroller = TextEditingController();

  TextEditingController emailcontroller = TextEditingController();

  TextEditingController mobilecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

////////////////
//////
  Future signUpAuth(
      String name, String email, String phone, String password) async {
    var response = await http.post(
        Uri.parse(
          linkSignUp,
        ),
        body: <String, String>{
          'name': name,
          'email': email,
          'mobile': phone,
          'password': password,
        });
    if (response.statusCode == 200 || response.statusCode == 201) {
      var js = jsonDecode(response.body);
      showSnackBar(context, js['message']);

      ///////////////الوغ ان ضمنيا مشان احصل على التكين
      ///////////log in signUp
      ///////انتبهيييييييييييييييييييييييييييي
      ///{{{
      var responselog = await http.post(
          Uri.parse(
            linklogin,
          ),
          body: <String, String>{
            'email': email,
            'password': password,
          });
      if (responselog.statusCode == 200) {
        var js = jsonDecode(responselog.body);
        String token = js['access_token'];
        myservices.sharedPreferences.setString('token', token);
        print('the token is $token');
      }
      /////}}}}}]]]]
      /////////////////الوغ ان ضمنيا مشان احصل على التكين
      ///////////////

      print(
          "myservices.sharedPreferences.getString('token') :${myservices.sharedPreferences.getString('token')}");
      Get.to(profile1());
      print("yoeeeeeeeeeeeeeeeeeeeeessss");
      print(response.body);
    } else if (response.statusCode == 400 || response.statusCode == 401) {
      showSnackBar(context, response.body);
      print(response.body);
      print(response.statusCode);
    } else {
      print(response.body);
      print(response.statusCode);
    }
  }

/////
//  late bool ispass =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        // padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              AppColor.greentop,
              AppColor.moov,
              AppColor.primaryColor,
              // AppColor.primaryColor2,
              AppColor.blue,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  begintextlogsign(
                    color: AppColor.white,
                    fonttext: "Sign Up",
                    endtext: " Hello in TaskTrove",
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
                              height: 40,
                            ),
                            CustomTextForm(
                              mycontroller: namecontroller,
                              iconData: Icons.person_2_outlined,
                              hintText: "enten the Username ",
                              labelText: "Username",
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
                              mycontroller: emailcontroller,
                              iconData: Icons.email_outlined,
                              hintText: "enten the email ",
                              labelText: "email",
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
                              mycontroller: mobilecontroller,
                              iconData: Icons.phone,
                              hintText: "enten the phone ",
                              labelText: "Phone",
                              valid: (val) {
                                return null;

                                // return ValidInput(val!, 2, 1000, "username");
                              },
                              onChanged: (data) {
                                // trad_name = data;
                              },
                              isNumber: true,
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
                            CustomBotton(
                              text: "Sign Up",
                              onPressed: () async {
                                signUpAuth(
                                    namecontroller.text,
                                    emailcontroller.text,
                                    mobilecontroller.text,
                                    passwordcontroller.text);
                                //  Get.to(const profile1());
                              },
                            ),
                            CustomTextSignUporSignIn(
                                textone: "Already have an account?",
                                texttow: "  Log In",
                                onTap: () {
                                  Get.off(const login());
                                }),
                            const SizedBox(
                              height: 30,
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
