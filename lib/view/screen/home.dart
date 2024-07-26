import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/addpost.dart';
import 'package:progectbalkies/view/screen/businesfilter.dart';
import 'package:progectbalkies/view/screen/findjobs.dart';
import 'package:progectbalkies/view/screen/news.dart';
import 'package:progectbalkies/view/screen/profileconst.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  int currentTab = 0;
  final List<Widget> screen = [
    const findJobs(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const findJobs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        splashColor: AppColor.pink,
        shape:
            ShapeBorder.lerp(const StadiumBorder(), const StadiumBorder(), 3),
        // backgroundColor: const Color.fromARGB(155, 3, 172, 9),
        backgroundColor: AppColor.mooov,
        onPressed: () {
          Get.to(const addpost());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const findJobs();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_sharp,
                            size: 30,
                            color:
                                currentTab == 0 ? AppColor.moov : Colors.grey),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: currentTab == 0
                                  ? AppColor.yallo
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const businesfilterPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.join_full_sharp,
                            size: 30,
                            color:
                                currentTab == 1 ? AppColor.moov : Colors.grey),
                        Text(
                          "Jobs",
                          style: TextStyle(
                              color: currentTab == 1
                                  ? AppColor.yallo
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              /////Right tab bar Icon
              ///
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const news();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            size: 30,
                            color:
                                currentTab == 2 ? AppColor.moov : Colors.grey),
                        Text(
                          "news",
                          style: TextStyle(
                              color: currentTab == 2
                                  ? AppColor.yallo
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const profileconst();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_outlined,
                            size: 30,
                            color:
                                currentTab == 3 ? AppColor.moov : Colors.grey),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3
                                  ? AppColor.yallo
                                  : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
