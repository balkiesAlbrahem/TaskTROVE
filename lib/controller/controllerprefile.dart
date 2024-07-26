// // import 'dart:html';
import 'dart:io';
// import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class ProfileController extends GetxController {
  // ignore: non_constant_identifier_names
  String Imagep = "assets/image/person (2).jfif";

  final picker = ImagePicker();

  Future getimagefromgallery() async {
    final imagepicker = await picker.pickImage(source: ImageSource.gallery);
    if (imagepicker != null) {
      imagepic = File(imagepicker.path);
      update();
    } else {
      print("no image ");
      update();
    }
  }

  File? imagepic;
  Future getimagefromcamera() async {
    final imagepicker = await picker.pickImage(source: ImageSource.camera);
    if (imagepicker != null) {
      imagepic = File(imagepicker.path);
      update();
    } else {
      print("no image ");
      update();
    }
  }
  // imagepickerfromgallery() async {
  //   final imagepicker =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (imagepicker != null) {
  //     image = imagepicker;
  //   } else {}
  // }

  showImagePickerOption() {
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColor.white,
          ),
          width: double.infinity,
          height: 170,
          child: Column(
            children: [
              Text("choise your photo "),
              ListTile(
                  leading: const Icon(Icons.image),
                  title: const Text("Gallery"),
                  onTap: () async {
                    await getimagefromgallery();
                    Get.back();
                  }),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Camera"),
                onTap: () async {
                  await getimagefromcamera();
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
      enterBottomSheetDuration: const Duration(milliseconds: 200),
    );
  }
}
