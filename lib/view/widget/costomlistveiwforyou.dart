import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomjobsbegin.dart';

// ignore: must_be_immutable, camel_case_types
class costomlistveiwforyou extends StatelessWidget {
  costomlistveiwforyou({super.key});
  List<Color> backgroundColor = [
    const Color.fromRGBO(200, 162, 249, 1),
    const Color.fromARGB(255, 124, 253, 130),
    // const Color.fromARGB(255, 161, 252, 232),
    const Color.fromARGB(177, 227, 124, 186),
    const Color.fromARGB(255, 119, 142, 244),
    // const Color.fromARGB(186, 213, 247, 103),
    const Color.fromARGB(255, 255, 136, 136),
    const Color.fromARGB(255, 246, 171, 191),
  ];

  int currentIndex = 0;
  Color getNextColor() {
    Color nextColor = backgroundColor[currentIndex];
    currentIndex = (currentIndex + 1) % backgroundColor.length;
    return nextColor;
  }

  // listnextcolor? llistnextcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        //  color: const Color.fromARGB(255, 244, 159, 180),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: costomJobsbegin(
              backgroundcolor: getNextColor(),
              nameCompany: "TackTrove LLc",
              nameJobs: "Senior Softwar Enginer",
              timeJobs: 'Full Time',
              placeJobs: "North Amrica",
              image: "assets/image/logoo (1).png",
              backtextcolor: AppColor.white,
            ),
          );
        },
      ),
    );
  }
}
