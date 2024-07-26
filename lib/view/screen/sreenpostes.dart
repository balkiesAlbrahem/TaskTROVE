import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/employprofile.dart';
import 'package:progectbalkies/services/getProEmployServices.dart';
import 'package:progectbalkies/services/getallpostservices.dart';
import 'package:progectbalkies/models/mypost.dart';
import 'package:progectbalkies/view/screen/addpost.dart';
import 'package:progectbalkies/view/screen/screenshowprofileemployee.dart';
import 'package:progectbalkies/view/widget/costompostes.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

class screenpostes extends StatefulWidget {
  const screenpostes({Key? key}) : super(key: key);

  @override
  State<screenpostes> createState() => _screenpostesState();
}

class _screenpostesState extends State<screenpostes> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrowerOpen = false;

  //////////////////////////////////////////////////////////////////
  ///
  ///
  //////////////////////////////////////////////////////////////////
  // Future<List<mypostModel>>getallpost()async{

  // }

  /////////////////////////////////////////////////////////////////
  ///
  ///
  //////////////////////////////////////////////////////////////////
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
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.greentop,
          // centerTitle: true,
          title: costomtitlebegin(
            mycolor: AppColor.white,
            title: "             Postes",
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
          leading: isDrowerOpen
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 0;
                      yOffset = 0;
                      scaleFactor = 1;
                      isDrowerOpen = false;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  ))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isDrowerOpen = true;
                    });
                  },
                  icon: Icon(
                    Icons.menu,
                    color: AppColor.white,
                  ),
                ),
        ),
        body: Stack(
          children: [
            FutureBuilder<List<mypostModel>>(
                future: AllpostServices().getallpost(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<mypostModel> postes = snapshot.data!;
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        final screen = constraints.biggest;
                        return SizedBox(
                          width: screen.width,
                          height: screen.height,
                          child: ListView.separated(
                            itemCount: postes.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 32),
                            itemBuilder: (context, index) {
                              return FutureBuilder<employprofile_Model>(
                                future: ProfileEmployeeServices()
                                    .getProfileEmployeeServices(
                                        postes[index].id_employee),
                                builder: (context, profileSnapshot) {
                                  if (profileSnapshot.hasData) {
                                    employprofile_Model employeeprofile =
                                        profileSnapshot.data!;

                                    // print(
                                    //     " employprofile_Model employeeprofile ${employeeprofile}");
                                    return Post(
                                      showprofile: () {
                                        Get.to(screenshowprofileemployee(
                                            id: employeeprofile.id,
                                            employeeName:
                                                employeeprofile.employeeName,
                                            profileImage:
                                                employeeprofile.profileImage,
                                            location: employeeprofile.location,
                                            employeeSpecialization:
                                                employeeprofile
                                                    .employeeSpecialization,
                                            employeeAcademicStatus:
                                                employeeprofile
                                                    .employeeAcademicStatus,
                                            employeeComunnicationTool:
                                                employeeprofile
                                                    .employeeComunnicationTool,
                                            expectedSalary:
                                                employeeprofile.expectedSalary,
                                            yearsOfExperience: employeeprofile
                                                .yearsOfExperience));
                                      },
                                      id_post: postes[index].id,
                                      profilePhoto:
                                          Image.asset('assets/image/☾.jpeg'),
                                      // Container(color: Colors.blue),
                                      name: employeeprofile.employeeName,
                                      date: DateTime.parse(
                                          postes[index].created_at),
                                      text: postes[index].post,
                                      location: employeeprofile.location,
                                      // comments: const [
                                      //   // Comment(
                                      //   //     userName: 'clint',
                                      //   //     text: 'nice photo ma\' man')
                                      // ],
                                      image: Image.asset('assets/image/☾.jpeg'),
                                      //  Image.network(
                                      //     'http://192.168.43.150:8000${postes[index].image}'),

                                      //
                                      //
                                    );
                                  } else if (profileSnapshot.hasError) {
                                    return Text(
                                        'Error: ${profileSnapshot.error}');
                                  } else {
                                    return const Center(
                                        child: CircularProgressIndicator(
                                      color: Colors.black,
                                      strokeWidth: 4,
                                    ));
                                  }
                                },
                              );
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        strokeWidth: 4,
                      ),
                    );
                  }
                }),
            Positioned(
              bottom: 20,
              left: 295,
              child: InkWell(
                onTap: () {
                  Get.to(addpost());
                },
                child: Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.greentop),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColor.white,
                        size: 28,
                      ),
                      Container(width: 10),
                      Text(
                        "add",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
