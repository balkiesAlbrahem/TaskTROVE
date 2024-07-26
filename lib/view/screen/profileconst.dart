import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomlisttitle.dart';
import 'package:progectbalkies/view/widget/costomlisttitlewithoutsubtitle.dart';

// ignore: camel_case_types
class profileconst extends StatelessWidget {
  const profileconst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:Text(
            "Profile",
            style: TextStyle(color: AppColor.white),
          ),
          backgroundColor: AppColor.mooov,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 12, top: 20, right: 12),
          child: GestureDetector(
            onTap: () {},
            child: ListView(
              children: [
                // const begintextlogsign(
                //   color: AppColor.mooov,
                //   fonttext: "Profile",
                //   endtext:
                //       "you can edits your information ",
                // ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4, color: AppColor.white),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              // color: AppColor.mooov.withOpacity(0.9),
                              color: Colors.black.withOpacity(0.17),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/image/person (2).jfif")),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 3,
                              color: AppColor.white,
                            ),
                            color: AppColor.moov,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              size: 20,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///////////////////////////////////
                ////////////////////
                ////
                ///
                //////
                ///////
                ///
                ///////////////////////////////////
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Your Infomation",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.moov),
                ),
                costomlisttite(
                  title: "Ahmad Qli",
                  subtitle: "Softwore enginer",
                  icon: Icons.edit,
                  onpressed: () {},
                ),
                costomlisttite(
                  title: "Ahmad@gmail.com",
                  subtitle: "comunnication tool",
                  icon: Icons.edit,
                  onpressed: () {},
                ),
                costomlisttite(
                  title: "Student",
                  subtitle: "Academic Status",
                  icon: Icons.arrow_forward_ios_sharp,
                  onpressed: () {},
                ),
                costomlisttite(
                  title: "Softwore enginer",
                  subtitle: "Academic specialization or work",
                  icon: Icons.arrow_forward_ios_sharp,
                  onpressed: () {},
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    height: 3,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  "Your Activity",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColor.moov),
                ),
                const costomlisttitewithoutsubtitle(
                  title: "Archives",
                  icon1: Icons.bookmark_border_outlined,
                  icon2: Icons.arrow_forward_ios_sharp,
                  colorfront: AppColor.blueFuscous,
                ),
                const costomlisttitewithoutsubtitle(
                  title: "Favorite works",
                  icon1: Icons.favorite_border_outlined,
                  icon2: Icons.arrow_forward_ios_sharp,
                  colorfront: AppColor.favoritecolor,
                ),

                const costomlisttitewithoutsubtitle(
                  title: "My Posts",
                  icon1: Icons.sentiment_satisfied_alt_outlined,
                  icon2: Icons.arrow_forward_ios_sharp,
                  colorfront: AppColor.pink,
                ),
                const costomlisttitewithoutsubtitle(
                  title: "The Setting ",
                  icon1: Icons.settings,
                  icon2: Icons.arrow_forward_ios_sharp,
                  colorfront: AppColor.greenFuscous,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    height: 3,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
