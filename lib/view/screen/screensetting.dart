import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/Apptheme.dart';
import 'package:progectbalkies/view/screen/screenUpdateprofile.dart';
import 'package:progectbalkies/view/screen/screensettingAbout.dart';
import 'package:progectbalkies/view/widget/costomconstant.dart';
import 'package:progectbalkies/view/widget/costomrowsetting.dart';

// ignore: camel_case_types
class sceensetting extends StatefulWidget {
  const sceensetting({super.key});

  @override
  State<sceensetting> createState() => _sceensettingState();
}

// ignore: camel_case_types
class _sceensettingState extends State<sceensetting> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrowerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrowerOpen ? -0.5 : 0),
      duration: const Duration(
        milliseconds: 230,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrowerOpen ? 40 : 0.0),
        color: Colors.white,
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                isDrowerOpen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrowerOpen = false;
                          });
                        },
                        icon: const Icon(Icons.arrow_back_ios))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrowerOpen = true;
                          });
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Color(0xff416d6d),
                        ),
                      ),
                const SizedBox(
                  width: 280,
                  // color: AppColor.greentop2,
                  child: Center(
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 27,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //////////////////
          ///
          const SizedBox(
            height: 50,
          ),
          ///////////
          const costomconstant2(
            titleconst: "APPLICARIONS",
          ), //////
          //////////
          ///
          costomrowlist(
            icon: Icons.person_3_outlined,
            text: "Update Profile",
            ontap: () {
              Get.to(Screenupdateprofile());
            },
          ),
          costomrowlist(
            icon: Icons.notifications_outlined,
            text: "Notification",
            ontap: () {},
          ),
          costomrowlist(
            icon: Icons.restaurant_menu_rounded,
            text: "Change Password",
            ontap: () {
              Get.defaultDialog(
                
                title: "do You Shure to change password ?",
                titleStyle: const TextStyle(
                  color: AppColor.black,
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 15,
                ),
                // custom:Icon(Icons.access_alarm),
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            "new password ",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'PlayfairDisplay',
                              color: AppColor.greenFuscous,
                            ),
                          ),
                        ),
                      ),
                    ),
                   
                   
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 30,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          label: Text(
                            "repassword ",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'PlayfairDisplay',
                              color: AppColor.greenFuscous,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("delete ");
                      },
                      child: const Text(
                        "Yes, I shure ",
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                    ),
                  ],
                ),
                // confirm: Text("data"),
                // textCancel: "No",
                // textConfirm: "I Sure ",
                // onConfirm: () {
                //   print("object");
                // }
              );
            },
          ),
          costomrowlist(
            icon: Icons.language_outlined,
            text: "Language",
            ontap: () {},
          ),
          costomrowlist(
            icon: Icons.dark_mode,
            text: "Theme",
            ontap: () {
              print("object");
              if (Get.isDarkMode) {
                Get.changeTheme(Themes.customlighttheme);
              } else {
                Get.changeTheme(Themes.customDarktheme);
              }
            },
          ),

          costomrowlist2(
            icon: Icons.delete_outlined,
            text: "Delete Account",
            ontap: () {
              Get.defaultDialog(
                title: "   do You Shure from delete account ?   ",
                titleStyle: const TextStyle(
                  color: AppColor.black,
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 15,
                ),
                // custom:Icon(Icons.access_alarm),
                content: InkWell(
                  onTap: () {
                    print("delete ");
                  },
                  child: const Text(
                    "Yes,I shure ",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // confirm: Text("data"),
                // textCancel: "No",
                // textConfirm: "I Sure ",
                // onConfirm: () {
                //   print("object");
                // }
              );
            },
          ),
          ////////////////
          ////////////////
          ///
          Container(
            height: 30,
          ),
          const costomconstant(
            titleconst: "ABOUT",
          ),
          costomrowlist(
            icon: Icons.help_outline,
            text: "Help Center",
            ontap: () {},
          ),
          costomrowlist(
            icon: Icons.person_add_alt_1_outlined,
            text: "Support",
            ontap: () {},
          ),

          costomrowlist(
            icon: Icons.help_outline,
            text: "About",
            ontap: () {
              Get.to(const Screensettingabout());
            },
          ),
        ],
      ),
    );
  }
}
