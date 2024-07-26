import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/linkapi.dart';
import 'package:progectbalkies/controller/controllerprefile.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/screen/home.dart';
import 'package:progectbalkies/view/screen/login.dart';
import 'package:progectbalkies/view/widget/costombuildtextfeild.dart';

// ignore: camel_case_types, must_be_immutable
class profile1 extends StatefulWidget {
  // ignore: non_constant_identifier_names

  profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

// ignore: camel_case_types
class _profile1State extends State<profile1> {
  TextEditingController namecontroller = TextEditingController();

  TextEditingController locationcontroller = TextEditingController();

  TextEditingController specializationcontroller = TextEditingController();

  TextEditingController academiccontroller = TextEditingController();

  TextEditingController comunnicationcontroller = TextEditingController();

  ///
  Myservices myservices = Get.find();
//////تابع الربط//////////////////////////////////////////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  ///
//////////////////////////////////////////////////////////////////////////
  Future Authprofile(String name, String location, String speialization,
      String academic, String communnication, File image) async {
    var request = http.MultipartRequest('POST', Uri.parse(linkcreatprofile));
    request.fields.addAll({
      'employeeName': name,
      'location': location,
      'employeeSpecialization': speialization,
      'employeeAcademicStatus': academic,
      'employeeComunnicationTool': communnication,
      'token': myservices.sharedPreferences.getString('token') as String,
    });
    request.files
        .add(await http.MultipartFile.fromPath('profileImage', image.path));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response);
      print(await response.stream.bytesToString());
      print(response.statusCode);
      myservices.sharedPreferences.setString('name', name);
      myservices.sharedPreferences.setString('location', location);
      myservices.sharedPreferences.setString('Specialization', speialization);
      myservices.sharedPreferences.setString('academic', academic);
      myservices.sharedPreferences.setString('comunnication', communnication);
      Get.offAll(const home());
    } else {
      print(response.statusCode);
      print('error');
      print(response.reasonPhrase);
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  //////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mooov,
        title:  Text(
          "profile",
          style: TextStyle(color: AppColor.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(login());
          },
          icon:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColor.white,
          ),
        ),
      ),
      body: GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          print("reduild ");
          return Container(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: GestureDetector(
              onTap: () {},
              child: ListView(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: AppColor.white),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.17),
                              ),
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: controller.imagepic != null
                                  ? FileImage(controller.imagepic!)
                                      as ImageProvider
                                  : AssetImage(controller.Imagep)
                                      as ImageProvider,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: AppColor.white,
                              ),
                              color: AppColor.moov,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.showImagePickerOption();
                              },
                              icon: Icon(
                                Icons.edit,
                                size: 20,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  buildtextfeild(
                    mycontroller: namecontroller,
                    labeltext: "full name ",
                    spaceholder: "maya",
                    ispassword: false,
                  ),
                  buildtextfeild(
                    mycontroller: locationcontroller,
                    labeltext: "Location",
                    spaceholder: "North Africa",
                    ispassword: false,
                  ),
                  buildtextfeild(
                    mycontroller: specializationcontroller,
                    labeltext: "Specialization ",
                    spaceholder: "Business Management",
                    ispassword: false,
                  ),
                  buildtextfeild(
                    mycontroller: academiccontroller,
                    labeltext: "Academic status",
                    spaceholder: "like Student",
                    ispassword: false,
                  ),
                  buildtextfeild(
                    mycontroller: comunnicationcontroller,
                    labeltext: "Comunnication Tool ",
                    spaceholder: "like email",
                    ispassword: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Get.back();
                        },
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          "CONSOL",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Authprofile(
                              namecontroller.text,
                              locationcontroller.text,
                              specializationcontroller.text,
                              academiccontroller.text,
                              comunnicationcontroller.text,
                              controller.imagepic!);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          padding: const EdgeInsets.symmetric(horizontal: 55),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child:  Text(
                          "SAVE",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    
    
    
    );
  }
}
