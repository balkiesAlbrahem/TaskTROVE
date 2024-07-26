import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/models/jobModel.dart';
import 'package:progectbalkies/services/get_alljobmodel.dart';
import 'package:progectbalkies/view/screen/detailsforjobs.dart';
import 'package:progectbalkies/view/widget/costomhry.dart';
import 'package:progectbalkies/view/widget/costomrecentjobs.dart';
import 'package:progectbalkies/view/widget/costomsearchfake.dart';
import 'package:progectbalkies/view/widget/costomsenterleft.dart';
import 'package:progectbalkies/view/widget/costomstackjobs.dart';

// ignore: camel_case_types
class findJobs extends StatefulWidget {
  const findJobs({super.key});

  @override
  State<findJobs> createState() => _findJobsState();
}

// ignore: camel_case_types
class _findJobsState extends State<findJobs> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrowerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrowerOpen ? -0.5 : 0),
      duration: const Duration(
        milliseconds: 230,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrowerOpen ? 40 : 0.0),
        color: Colors.white,
      ),
      child: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 0, left: 20, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        isDrowerOpen
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    xOffset = 0;
                                    yOffset = 0;
                                    scaleFactor = 1;
                                    isDrowerOpen = false;
                                  });
                                },
                                icon: const Icon(Icons.arrow_back_ios))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    xOffset = 230;
                                    yOffset = 150;
                                    scaleFactor = 0.6;
                                    isDrowerOpen = true;
                                  });
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Color(0xff416d6d),
                                ),
                              ),
                      ],
                    ),
                    const costomHeyAndName(),
                    const SizedBox(
                      height: 10,
                    ),
                    costomSearckfake(),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    costomcenterleft(
                      firsttitle: 'Hot Jobs For You',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: FutureBuilder(
                        future: Alljob().getalljob(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<jobModel> jobs = snapshot.data!;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: jobs.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Get.to( detailsforjobs(job: jobs[index],));
                                  },
                                  child: stuckformyjobs(
                                    job: jobs[index],
                                    index: index,
                                  ),
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                                color: Colors.black,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    costomcenterleft(
                      firsttitle: 'Recent Job',
                    ),
                    // const costomrecentjobs(),
                    //
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: FutureBuilder(
                        future: Alljob().getalljob(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<jobModel> jobs = snapshot.data!;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: jobs.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    right: 0,
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: costomrecentjobs(
                                    jodM: jobs[index],
                                  ),
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                                color: Colors.black,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: FutureBuilder(
                        future: Alljob().getalljob(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<jobModel> jobs = snapshot.data!;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: jobs.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 12),
                                  child: costomrecentjobs(
                                    jodM: jobs[index],
                                  ),
                                );
                              },
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 5,
                                color: Colors.black,
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //     top: 700,
          //     child: Container(
          //       width: 410,
          //       height: 600,
          //       decoration: const BoxDecoration(
          //         color: Color.fromARGB(255, 226, 223, 223),
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(50),
          //           topRight: Radius.circular(50),
          //         ),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.only(
          //             top: 0, left: 15, right: 15, bottom: 9),
          //         child: GridView.builder(
          //             gridDelegate:
          //                 const SliverGridDelegateWithFixedCrossAxisCount(
          //               childAspectRatio: 2.5,
          //               crossAxisCount: 1,
          //               // crossAxisSpacing: 20,
          //               mainAxisSpacing: 13,
          //             ),
          //             itemCount: 20,
          //             itemBuilder: (context, inadex) {
          //               return const costomJobsbegin(
          //                 backtextcolor: AppColor.yallo,
          //                 backgroundcolor: AppColor.white,
          //                 nameCompany: "TackTrove LLc",
          //                 nameJobs: "Senior Softwar Enginer",
          //                 timeJobs: 'Full Time',
          //                 placeJobs: "North Amrica",
          //                 image: "assets/image/logoo (1).png",
          //               );
          //             }),
          //       ),
          //     )),

          // Positioned(
          //   left: 280,
          //   bottom: 30,
          //   child: InkWell(
          //     onTap: () {
          //       Get.to(
          //         const allJobsPage(),
          //       );
          //     },
          //     child: Container(
          //       padding: const EdgeInsets.all(2.0),
          //       height: 25,
          //       width: 90,
          //       decoration: BoxDecoration(
          //           color: AppColor.moov,
          //           borderRadius: BorderRadius.circular(15)),
          //       child: const Text(
          //         "   Veiw All ",
          //         style: TextStyle(color: AppColor.white, fontSize: 15),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
