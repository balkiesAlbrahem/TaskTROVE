import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costombegendetailsjobs.dart';
import 'package:progectbalkies/view/widget/costomimageforcompany.dart';
import 'package:progectbalkies/view/widget/costomnameforcomany.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

class sceendetailscompany extends StatelessWidget {
  const sceendetailscompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromARGB(255, 235, 234, 234),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                )),
          ),
          centerTitle: true,
          title: const Text(
            'Details Company',
            style: TextStyle(
              color: AppColor.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "PlayfairDisplay",
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              costomimageforcompany(),
              costomnameforcomany(
                namecompany: "Google",
                secondname: "300 Employees",
              ),
              const Costombegendetailsjobs(
                location: "USB",
                salary: '300k',
                time: 'Full Time',
              ),
              const SizedBox(
                height: 10,
              ),
              const costomtitlebegin(
                mycolor: AppColor.black,
                title: 'Company Description',
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Reloaded 1loaded 1 of 1767 libraries in 721ms (compile: 30 msloaded 1 of 1767 libraries in 721ms (compile: 30 ms of 1767 libraries in 721ms (compile: 30 ms, reload: 209 ms, reassemble 397 ms)",
                style: TextStyle(fontFamily: "LibreBaskerville", fontSize: 14),
              ),
            ],
          ),
        ));
  }
}
