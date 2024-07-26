import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/Apptheme.dart';
import 'package:progectbalkies/view/widget/costomlisttiteforsidebor.dart';
import 'package:progectbalkies/view/widget/costomnews.dart';
import 'package:progectbalkies/view/widget/myDrawer_header.dart';

// import 'package:share_plus/share_plus.dart';

// ignore: camel_case_types
class news extends StatelessWidget {
  const news({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text(
          "track trove",
          style: TextStyle(
            color: AppColor.white,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon:  Icon(
                Icons.search,
                color: AppColor.white,
              )),
          IconButton(
              onPressed: () {},
              icon:  Icon(
                Icons.notifications_outlined,
                color: AppColor.white,
              )),
        ],
        /////////////////////////////////للحذف    //////////////////////////////////////
        // leading: IconButton(
        //     onPressed: () {
        //       if (Get.isDarkMode) {
        //         Get.changeTheme(Themes.customlighttheme);
        //       } else {
        //         Get.changeTheme(Themes.customDarktheme);
        //       }
        //     },
        //     icon: const Icon(
        //       Icons.light_mode_outlined,
        //       color: AppColor.black,
        //     )),

        ////////////////////////////////
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: <Widget>[
      //       Container(
      //         height: 200,
      //         width: 160,
      //         color: AppColor.black,
      //       ),
      //       Container(
      //         height: 200,
      //         width: 160,
      //         color: AppColor.mooov,
      //       ),
      //       Container(
      //         height: 200,
      //         width: 160,
      //         color: AppColor.pinkFuscous,
      //       ),
      //       Container(
      //         height: 200,
      //         width: 160,
      //         color: AppColor.gren,
      //       )
      //     ],
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.only(top: 9),
        child: ListView(
          children: const <Widget>[
            CostomNows(
              proimage:
                  "https://i.pinimg.com/236x/93/87/90/938790b17acb5b3b8236d65ce8c4fc45.jpg",
              proname: "Google",
              data: "today at 9 AM",
              proimage2:
                  'https://i.pinimg.com/564x/f6/7a/63/f67a63a7c280d1fabbb9d889d8daa9eb.jpg',
              date: 'today at 9 AM',
            ),
            CostomNows(
              proimage:
                  "https://i.pinimg.com/236x/b1/5e/2d/b15e2de7286641ab4cec12cc69fc40fc.jpg",
              proname: "Microsoft",
              data: "hallo every body hi i am ancle",
              proimage2:
                  'https://i.pinimg.com/236x/02/5c/14/025c14810ade9e086d45df31e4b1d465.jpg',
              date: 'today at 9 AM',
            ),
            CostomNows(
              proimage:
                  "https://i.pinimg.com/236x/d8/94/6b/d8946b7d982886f04adb49234185eea1.jpg",
              proname: "facbook",
              data: "hallo every body hi i am ancle",
              proimage2:
                  'https://i.pinimg.com/564x/12/36/4e/12364e2df54caec0b0894553770bd220.jpg',
              date: 'today at 9 AM',
            ),
            CostomNows(
              proimage:
                  "https://i.pinimg.com/236x/d8/94/6b/d8946b7d982886f04adb49234185eea1.jpg",
              proname: "facbook",
              data: "hallo every body hi i am ancle",
              proimage2:
                  'https://i.pinimg.com/564x/12/36/4e/12364e2df54caec0b0894553770bd220.jpg',
              date: 'today at 9 AM',
            ),
            CostomNows(
              proimage:
                  "https://i.pinimg.com/236x/d8/94/6b/d8946b7d982886f04adb49234185eea1.jpg",
              proname: "facbook",
              data: "hallo every body hi i am ancle",
              proimage2:
                  'https://i.pinimg.com/564x/12/36/4e/12364e2df54caec0b0894553770bd220.jpg',
              date: 'today at 9 AM',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const MyDrawerHeader(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          //
          listTitlesidebor(
            onpressed: () {
              if (Get.isDarkMode) {
                Get.changeTheme(Themes.customlighttheme);
              } else {
                Get.changeTheme(Themes.customDarktheme);
              }
            },
            title: "Darck Mode",
            icon: Icons.light_mode_outlined,
          )
        ],
      ),
    );
  }

  // Widget menuItem() {
  //   return Material(
  //     child: InkWell(
  //       child: Padding(
  //         padding: EdgeInsets.all(0.15),
  //         child: Row(
  //           children: [
  //             Expanded(
  //                 child: Icon(
  //               Icons.light_mode_outlined,
  //               color: AppColor.black,
  //             )),
  //             Expanded(
  //                 child: Text(
  //               "bark mode",
  //               style: TextStyle(color: AppColor.mooov),
  //             ))
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
