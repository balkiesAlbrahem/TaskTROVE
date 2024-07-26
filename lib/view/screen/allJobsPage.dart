import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomjobsbegin.dart';

// ignore: camel_case_types
class allJobsPage extends StatelessWidget {
  const allJobsPage({super.key});

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
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.yallo,
            )),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Search your Jobs?",
              style: TextStyle(
                color: AppColor.black,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " All Popular Jobs",
                style: TextStyle(
                  color: AppColor.yallo,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 226, 223, 223),
            ),
            height: 680,
            width: 600,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.5,
                    crossAxisCount: 1,
                    // crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, inadex) {
                    return  costomJobsbegin(
                      backtextcolor: AppColor.yallo,
                      nameCompany: "TackTrove LLc",
                      nameJobs: "Senior Softwar Enginer",
                      timeJobs: 'Full Time',
                      placeJobs: "North Amrica",
                      image: "assets/image/logoo (1).png",
                      backgroundcolor: AppColor.white,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
