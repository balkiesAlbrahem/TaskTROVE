import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/customnumberjobs.dart';

// ignore: camel_case_types
class jobsnumber extends StatelessWidget {
  const jobsnumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: AppColor.yallo,
                  size: 30,
                )),
          ],
          toolbarHeight: 50,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                //Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.yallo,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 70,
          ),
          child: GridView.builder(
            clipBehavior: Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 70,
            ),
            itemBuilder: (context, index) {
              return const costomjobsnumber(iconColor: AppColor.mooov);
            },
          ),
        ));
  }
}
