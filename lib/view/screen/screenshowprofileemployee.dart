import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/screenmypostesonly.dart';
import 'package:progectbalkies/view/widget/costomImagecircle.dart';
import 'package:progectbalkies/view/widget/costomtext.dart';
import 'package:http/http.dart' as http;
import 'package:progectbalkies/helper/myservicesCash.dart';

// ignore: camel_case_types
class screenshowprofileemployee extends StatelessWidget {
  const screenshowprofileemployee({
    super.key,
    required this.id,
    required this.employeeName,
    required this.profileImage,
    required this.location,
    required this.employeeSpecialization,
    required this.employeeAcademicStatus,
    required this.employeeComunnicationTool,
    required this.expectedSalary,
    required this.yearsOfExperience,
  });

  final int id;
  final String employeeName;
  final String profileImage;
  final String location;
  final String employeeSpecialization;
  final String employeeAcademicStatus;
  final String employeeComunnicationTool;
  final int expectedSalary;
  final int yearsOfExperience;

  @override
  Widget build(BuildContext context) {
    Myservices myservices = Get.find();
    Future Followme(int idemploy) async {
      var headers = {
        'Cookie':
            'XSRF-TOKEN=eyJpdiI6ImRJblBiNXVlVW9nYUZMVmhjTE9Yc2c9PSIsInZhbHVlIjoiczlrSjUrR2UxK1c5L0xNbm1vRElpZGo5MkVuemVobEhkTHViWkVXTklmN3JwMUUvOGxYZDVuYndkb2tIb09IZGk5SlBKZTl4VjdERGVudlBUY256dWs5Nm8xU3JxQVJhOTZtVm4wMXV5NWpmcXphbnVtbVNaYkNrVGZYZ2IyQ00iLCJtYWMiOiJjOTllMzU4NjhhMzIyNTVmOWFjMTNmOThmYTk0NTE0OTZiZjJjMDNhYzRmMDg1ZGJlNTAyZTBlYjQ5MGU0MWQzIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InQ4bXJWVFpvK3RIc2JjUVhhdmUyN2c9PSIsInZhbHVlIjoibkNHUVJrcnJyMXdveWtUNXFSeE1ETFRYam9CNVRnQnJMeFVWRGU2dzg5RGNaSEJDM1owZGVIdzlJU3FCeWRJT0Q3UnNkbm56SVNLU0k5dUYvUk1HOEw1M3NrU0lqNEsxT3oreTNXWHN5MVVsZG1rN0VjSGg3S01IcmZ6OExWYnQiLCJtYWMiOiI3MWQxNWEyNzI2OTFkMzNiYjA3MDFlNDJlMTY2NThkOGMwNWMxNjY5ODc4Yzg5NDAzYjBkMWRlYTg0OTk2NTdhIiwidGFnIjoiIn0%3D'
      };
      var request = http.Request(
          'POST',
          Uri.parse(
              'http://192.168.43.150:8000/api/followFreind/${idemploy}?token= ${myservices.sharedPreferences.getString('token')}'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar("               Congrats", "       you are followed succesfully",
            colorText: AppColor.black,
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 400,
            ),
            icon: const Icon(
              Icons.sentiment_satisfied,
              size: 50,
              color: AppColor.greentop,
            ));
        print("///////////");
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    }

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(300, 130),
              ),
              color: AppColor.greentop,
            ),
          ),
          Positioned(
            top: 220,
            left: 240,
            child: costomimagecircle(
              Image: profileImage,
            ),
          ),
          Positioned(
            top: 360,
            left: 15,
            child: SizedBox(
              height: 600,
              width: 390,
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  costomtext(
                    fontFamily: 'PlayfairDisplay',
                    color: AppColor.black,
                    text: employeeName,
                  ),
                  Text(
                    employeeComunnicationTool,
                    style: const TextStyle(
                      color: AppColor.greenFuscous,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  costomRowinformation(
                    text1: "Live In : ",
                    text2: location,
                    icon: Icons.location_on_outlined,
                  ),
                  costomRowinformation(
                    text1: "My Specialization is : ",
                    text2: employeeSpecialization,
                    icon: Icons.sentiment_satisfied,
                  ),
                  costomRowinformation(
                    text1: "The Years Of Experience : ",
                    text2: "$yearsOfExperience",
                    icon: Icons.hdr_weak,
                  ),
                  costomRowinformation(
                    text1: "The Salary : ",
                    text2: "$expectedSalary",
                    icon: Icons.done_all_sharp,
                  ),
                  costomRowinformation2(
                    text1: "My AcademicStatus is : ",
                    text2: employeeAcademicStatus,
                    icon: Icons.signal_cellular_alt_sharp,
                  ),
                  const SizedBox(height: 50),
                  // Row(
                  //   children: [
                  //     const SizedBox(width: 5),
                  //     InkWell(
                  //       onTap: () {
                  //         print("follow me");
                  //       },
                  //       child: Container(
                  //         width: 150,
                  //         height: 50,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           color: AppColor.greentop,
                  //         ),
                  //         child: const Center(
                  //           child: Text(
                  //             "Follow ",
                  //             style: TextStyle(
                  //               fontFamily: 'PlayfairDisplay',
                  //               color: AppColor.white,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 20),
                  //     Container(
                  //       width: 200,
                  //       height: 50,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: AppColor.black12,
                  //       ),
                  //       child: InkWell(
                  //         onTap: () {
                  //           Get.back();
                  //         },
                  //         child: const Center(
                  //           child: Text(
                  //             "Show his Postes",
                  //             style: TextStyle(
                  //               fontFamily: 'PlayfairDisplay',
                  //               color: AppColor.black,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 18,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
          ////////////////////
          ///
          ///////////////////
          ///
          //////////////////
          Positioned(
            top: 90,
            left: 270,
            child: Container(
              width: 100,
              height: 50,
              child: InkWell(
                onTap: () {
                  print("follow me");
                  Followme(id);
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.white,
                  ),
                  child: const Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
         
         
         ),
          /////////////////
          ///
          ///
          //////////
          ///
          //////////////////
          Positioned(
            bottom: 100,
            left: 230,
            child: Container(
              width: 170,
              height: 50,
              child: InkWell(
                onTap: () {
                  print("Show His Posstes");
                  Get.to(screenmypostesonly(
                    employlocation: location,
                    employid: id,
                    employname: employeeName,
                    employimage: profileImage,
                  ));
                },
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: AppColor.white,
                  ),
                  child: const Center(
                    child: Text(
                      "Show His Posstes",
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        color: AppColor.greentop2,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class costomRowinformation extends StatelessWidget {
  const costomRowinformation({
    super.key,
    required this.text1,
    required this.text2,
    required this.icon,
  });

  final String text1;
  final String text2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 17),
      child: Row(
        children: [
          Icon(icon, color: AppColor.greentop4),
          const SizedBox(width: 10),
          Text(
            text1,
            style: const TextStyle(
              color: AppColor.greenFuscous,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontFamily: 'PlayfairDisplay',
              color: AppColor.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class costomRowinformation2 extends StatelessWidget {
  const costomRowinformation2({
    super.key,
    required this.text1,
    required this.text2,
    required this.icon,
  });

  final String text1;
  final String text2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 15, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon, color: AppColor.greentop4),
              const SizedBox(width: 10),
              Text(
                text1,
                style: const TextStyle(
                  color: AppColor.greenFuscous,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Spacer(),
              Text(
                text2,
                style: const TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  color: AppColor.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
