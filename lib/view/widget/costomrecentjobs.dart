import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/jobModel.dart';
import 'package:progectbalkies/view/screen/detailsforjobs.dart';
import 'package:progectbalkies/view/widget/costomdetialsfrontjobs.dart';

// ignore: camel_case_types
class costomrecentjobs extends StatelessWidget {
  const costomrecentjobs({
    super.key,
    required this.jodM,
  });
  final jobModel jodM;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          Get.to(detailsforjobs(
            job: jodM,
          ));
        },
        child: Container(
          height: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.greentop,
          ),
          child: Padding(
            padding: const EdgeInsets.all(1.5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: AppColor.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: AppColor.greentop2,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/image/google-image.png'))),
                    ),
                    const Costomdetialsfrontjobs(
                      titlejob: 'Microsoft CLL',
                      titleplace: 'Mirpur,Dhaka',
                      titletimeandwhen: 'Full Time | 2 days ago',
                      salary: '3000k',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
