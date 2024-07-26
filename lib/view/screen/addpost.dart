import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/constants/linkapi.dart';
import 'package:progectbalkies/controller/controllerprefile.dart';
import 'package:progectbalkies/helper/myservicesCash.dart';
import 'package:progectbalkies/view/widget/costomidentificationmyself.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';

// ignore: camel_case_types
class addpost extends StatefulWidget {
  const addpost({super.key});

  @override
  State<addpost> createState() => _addpostState();
}

// ignore: camel_case_types
class _addpostState extends State<addpost> {
  TextEditingController postcontroller = TextEditingController();
  Myservices myservices = Get.find();
//////////////
///


/////////////////////////////
  ///
  // ignore: non_constant_identifier_names
  Future Authaddpost(String post, File image) async {
    var headers = {
      'Cookie':
          'XSRF-TOKEN=eyJpdiI6Im9TRTVxTDNsVmF0RmRSb0JJeVdKZUE9PSIsInZhbHVlIjoiZ0Y1aHdmclZGTkN6NStrOFBuUlZadktDNTY3QU9kTXM2Q1ZGSFlNeDVUSDA0OGxuTndNYmpUdG96SzhoRmRTbW1SdmwvWnVhUk9HeWcwSkllYzRnREQrb1FucWVyNnpSSFdraWJTWStWU1FHR05uT1psSFpwaDduT1lDOFdDU3oiLCJtYWMiOiIzMjg3Y2UxMWEwMzJmODgyZjRmYzU1NjZmNjcxNzE2ODJjMDA3YTUyMzAxZTY5NDNkOTU3OTM2NDJkYjI2NjA5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IkF2TTN2c3VTbXpWcXYyKzdtdnBpUlE9PSIsInZhbHVlIjoicWEyM3F5WHgyR0x6S2lycTBtK2pXcFYwaXdqdHdrTHgvclB5VzdzZGg0Vjc3VVpNVC9NN01wS1lzQ0ZhSFV4NXNCdlVkY0FuTWZLZWgySURSNTZ4OVVrOVE2Uk4xUGNhR041SUt4SS8xQ3IrVG9zWGh5T01iaG5ETjQ5MXBvU0wiLCJtYWMiOiI3MTFkOGZkZTI0ZDFhYWE4ZmUzNjJhMDM3NmVkZTIzYTZjZmEwNDJiOGQyMTg1N2MwOTFiZjE5OTgyMzA2ZjI1IiwidGFnIjoiIn0%3D'
    };
    var request = http.MultipartRequest('POST', Uri.parse(linkaddpost));
    request.fields.addAll({
      'Post': post,
      'token': myservices.sharedPreferences.getString('token') as String,
    });
    request.files.add(await http.MultipartFile.fromPath('image', image.path));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200 || response.statusCode == 201) {
      // print(response);
      Get.snackbar("Congrats", "The post added successfully",
          colorText: AppColor.black,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 100,
          ),
          icon: const Icon(
            Icons.thumb_up,
            color: AppColor.greentop,
          ));
      print("///////////");
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

//////
  ///
/////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: const Icon(
        //         Icons.notifications_outlined,
        //         color: AppColor.greentop,
        //         size: 30,
        //       )),
        // ],
        toolbarHeight: 50,
        automaticallyImplyLeading: false,
        elevation: 0,
        //title: Text("Add Post"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.greentop,
            )),
      ),
      body: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (ProfileController controller) {
            return Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            // Container(
                            //   width: 10,
                            // ),
                            const imagesmoleprofile(
                              image:
                                  "assets/image/ai-generated-8491587_1280.jpg",
                            ),
                            Container(
                              width: 10,
                            ),
                            const costomidentificationmyself(
                              myname: "Balkies AlBrahem",
                              spec_: "",
                            )
                          ],
                        ),
                        ///////////////////////
                        ///
                        ///
                        ///
                        ///
                        TextField(
                          controller: postcontroller,
                          decoration: const InputDecoration(
                            hintText: "what are you thinking about?",
                            hintStyle: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              color: AppColor.greenFuscous,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              // fontFamily: "LibreBaskerville",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //
                        //
                        ////////////////////////
                        InkWell(
                          onTap: () {
                            controller.showImagePickerOption();
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.photo_album,
                                color: AppColor.greentop2,
                                size: 30,
                              ),
                              Text(
                                "   Choose an image",
                                style: TextStyle(
                                  fontFamily: 'PlayfairDisplay',
                                  color: AppColor.greenFuscous,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  // fontFamily: "LibreBaskerville",
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        controller.imagepic != null
                            ? Container(
                                // width: 170,
                                height: 260,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 4, color: AppColor.white),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      color: Colors.black.withOpacity(0.17),
                                    ),
                                  ],
                                  // shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: controller.imagepic != null
                                        ? FileImage(controller.imagepic!)
                                            as ImageProvider
                                        : AssetImage(controller.Imagep)
                                            as ImageProvider,
                                  ),
                                ),
                              )
                            : const SizedBox(
                                height: 10,
                              ),
                      ],
                    )),
                Positioned(
                  bottom: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    child: InkWell(
                      onTap: () {
                        Authaddpost(postcontroller.text, controller.imagepic!);
                      },
                      child: Container(
                        // width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColor.greentop),
                        child:Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          child: Text(
                            "add",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
