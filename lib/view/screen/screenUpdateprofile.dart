import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/linkapi.dart';
import 'package:progectbalkies/controller/controllerprefile.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/screen/home.dart';
import 'package:progectbalkies/view/widget/costombuildtextfeild.dart';

class Screenupdateprofile extends StatefulWidget {
  const Screenupdateprofile({super.key});

  @override
  State<Screenupdateprofile> createState() => _ScreenupdateprofileState();
}

class _ScreenupdateprofileState extends State<Screenupdateprofile> {
  TextEditingController namecontroller = TextEditingController();

  TextEditingController locationcontroller = TextEditingController();

  TextEditingController specializationcontroller = TextEditingController();

  TextEditingController academiccontroller = TextEditingController();

  TextEditingController comunnicationcontroller = TextEditingController();

  ///
  Myservices myservices = Get.find();

  //////////////
  //////////////
  ///
  ///
  /////////////////
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

  //////////////
  //////////////
  //////////////
  /////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Update Profile",
          style: TextStyle(
            fontFamily: 'PlayfairDisplay',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (ProfileController controller) {
            return ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        // const costomimagecircle(
                        //   Image: "assets/image/☾.jpeg",
                        // ),
                        //////////
                        //////////
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: AppColor.white),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 5,
                                blurRadius: 10,
                                color: AppColor.greentop2,
                                // color: Colors.black.withOpacity(0.17),
                              ),
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: controller.imagepic != null
                                  ? FileImage(controller.imagepic!)
                                      as ImageProvider
                                  : const AssetImage("assets/image/☾.jpeg")
                                      as ImageProvider,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          // right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3,
                                color: AppColor.white,
                              ),
                              color: AppColor.greentop2,
                              // color: AppColor.gren,
                            ),
                            child: IconButton(
                              onPressed: () {
                                controller.showImagePickerOption();
                              },
                              icon: const Icon(
                                Icons.edit,
                                size: 18,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        "You Should edat you Profile \nبشكل احترافي لان ذلك يساعد\nك على ايجاد فرص عمل افضل",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontWeight: FontWeight.bold,
                          color: AppColor.greenFuscous,
                          // fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                ////////////////////
                ///
                const SizedBox(
                  height: 30,
                ),
                buildtextfeild2(
                  mycontroller: namecontroller,
                  labeltext: "Enter New Name ",
                  spaceholder: "....",
                  ispassword: false,
                ),
                ///////////////////////
                buildtextfeild2(
                  mycontroller: locationcontroller,
                  labeltext: "Location",
                  spaceholder: "....",
                  ispassword: false,
                ),
                buildtextfeild2(
                  mycontroller: specializationcontroller,
                  labeltext: "Specialization ",
                  spaceholder: "....",
                  ispassword: false,
                ),
                buildtextfeild2(
                  mycontroller: academiccontroller,
                  labeltext: "Academic status",
                  spaceholder: "....",
                  ispassword: false,
                ),
                buildtextfeild2(
                  mycontroller: comunnicationcontroller,
                  labeltext: "Comunnication Tool ",
                  spaceholder: "....",
                  ispassword: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: InkWell(
                    onTap: () {
                      print("follow me");
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.greentop2,
                      ),
                      child: const Center(
                        child: Text(
                          " Update Now ",
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
              ],
            );
          },
        ),
      ),
    );
  }
}
