import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/menuitem.dart';
import 'package:progectbalkies/view/screen/drowerscreen.dart';
import 'package:progectbalkies/view/screen/findjobs.dart';
import 'package:progectbalkies/view/screen/screencategury.dart';
import 'package:progectbalkies/view/screen/screenchat.dart';
import 'package:progectbalkies/view/screen/screenprofile.dart';
import 'package:progectbalkies/view/screen/screensetting.dart';
import 'package:progectbalkies/view/screen/sreenpostes.dart';

// ignore: camel_case_types
class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

// ignore: camel_case_types
class _home2State extends State<home2> {
  MenuItem currentItem = MenuItems.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          drowerscreen(
            currentItem: currentItem,
            onSelectedItem: (MenuItem item) {
              setState(() {
                currentItem = item;
              });
            },
          ),
          getContentWidget(),
        ],
      ),
    );
  }

  Widget getContentWidget() {
    switch (currentItem.title) {
      case 'home':
        return const findJobs();
      case 'conpanys':
        return const screencategury(); // استبدل AnotherScreen بالشاشة التي ترغب في عرضها
      // أضف الحالات الأخرى هنا بناءً على عناصر القائمة
      // case 'search':
      //   return const Searchtojobs();
      case 'posts':
        return const screenpostes();
      // case 'faourite':
      //   return const screenpoush();

      case 'chats':
        return const sceenchat();
      case 'profile':
        return const sceenprofile();
      case 'Setting':
        return const sceensetting();
      default:
        return const findJobs();
    }
  }
}

  //  home,
  //   conpanys,
  //   // search,
  //   faourite,
  //   posts,
  //   chats,
  //   profile,