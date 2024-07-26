import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/employprofile.dart';
import 'package:progectbalkies/services/get_allMyFreinds.dart';
import 'package:progectbalkies/view/widget/costomcardchats.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

// ignore: camel_case_types
class sceenchat extends StatefulWidget {
  const sceenchat({super.key});

  @override
  State<sceenchat> createState() => _sceenchatState();
}

// ignore: camel_case_types
class _sceenchatState extends State<sceenchat> {
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
      child: Container(
        padding: const EdgeInsets.only(top: 30),
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
            Column(
              children: [
                Row(
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
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: AppColor.white,
                            ))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrowerOpen = true;
                              });
                            },
                            icon: Icon(
                              Icons.menu,
                              color: AppColor.white,
                            ),
                          ),
                    Container(
                      width: 100,
                    ),
                    // Lottie.asset("assets/lottie/lottioearth.json", height: 50),
                    // Lottie.asset("assets/lottie/lottoichat.json", height: 50),

                    costomtitlebegin(
                      mycolor: AppColor.white,
                      title: "Chats",
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                    Container(
                      width: 120,
                    ),
                    Lottie.asset("assets/lottie/lottio2chats.json", height: 70),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                // const costomfakesearshforfriends(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 700,
                        width: double.infinity,
                        child: FutureBuilder<List<employprofile_Model>>(
                          future: AllMyFreinds().getallMyFriends(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              List<employprofile_Model> myFreinds =
                                  snapshot.data!;
                              return GridView.builder(
                                itemCount: myFreinds.length,
                                clipBehavior: Clip.none,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  childAspectRatio: 3.9,
                                  mainAxisSpacing: 5,
                                ),
                                itemBuilder: (context, index) {
                                  return costomcardchats(
                                    employ: myFreinds[index],
                                  );
                                },
                              );
                            } else {
                              return const Center(
                                  child: CircularProgressIndicator(
                                // value:3,
                                color: Colors.black,
                                strokeWidth: 5,
                              ));
                            }
                          },
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
