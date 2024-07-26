import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/menuitem.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/widget/costomconstant.dart';
import 'package:progectbalkies/view/widget/costomidentificationmyself.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';
// قم باستيراد الشاشات الأخرى هنا
import 'package:get/get.dart';

class MenuItems {
  static const home = MenuItem('home', Icons.home_outlined);
  static const conpanys = MenuItem('conpanys', Icons.donut_large);
  // static const search = MenuItem('search', Icons.search);
  // static const faourite = MenuItem('faourite', Icons.bookmark_outline);
  static const posts = MenuItem('posts', Icons.post_add_outlined);
  static const chats = MenuItem('chats', Icons.chat_outlined);
  static const profile = MenuItem('profile', Icons.person_outline);
  static const setting = MenuItem('Setting', Icons.settings);
  static const about = MenuItem(
    'About Us',
    Icons.help_outline,
  );

  static const all = <MenuItem>[
    home,
    conpanys,
    posts,
    chats,
    profile,
    // faourite,
    // setting,
  ];
  static const allhistore = <MenuItem>[
    setting,
    // about,
  ];
}

class drowerscreen extends StatefulWidget {
  const drowerscreen(
      {super.key, required this.currentItem, required this.onSelectedItem});
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  @override
  State<drowerscreen> createState() => _drowerscreenState();
}

class _drowerscreenState extends State<drowerscreen> {
  Myservices myservices = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 10,
          bottom: 70,
        ),
        color: AppColor.greentop2,
        child: Column(
          children: [
            Row(
              children: [
                const imagesmoleprofile(
                  image: "assets/image/ai-generated-8491587_1280.jpg",
                ),
                const SizedBox(
                  width: 10,
                ),
                costomidentificationmyself(
                  myname: "${myservices.sharedPreferences.getString('name1')}",
                  spec_: "${myservices.sharedPreferences.getString('email1')}",
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const costomconstant(
              titleconst: "BROWSE",
            ),
            ...MenuItems.all.map(BaildMenuItems).toList(),
            const SizedBox(
              height: 30,
            ),
            const costomconstant(
              titleconst: "HISTORY",
            ),
            ...MenuItems.allhistore.map(BaildMenuItems).toList(),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BaildMenuItems(MenuItem item) => ListTileTheme(
        selectedColor: AppColor.black,
        child: ListTile(
          selectedTileColor: AppColor.greentop,
          selected: widget.currentItem == item,
          leading: Icon(
            item.icon,
            color: AppColor.black,
            size: 25,
          ),
          title: Text(
            item.title,
            style: const TextStyle(
                color: AppColor.black,
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.bold),
          ),
          onTap: () => widget.onSelectedItem(item),
        ),
      );
}
