import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/employprofile.dart';
import 'package:progectbalkies/view/widget/costomimageprofile.dart';

// ignore: camel_case_types
class costomcardchats extends StatelessWidget {
  const costomcardchats({super.key, required this.employ});

  final employprofile_Model employ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
              leading: const imagesmoleprofile(
                image: "assets/image/ai-generated-8491587_1280.jpg",
              ),
              title: Text(
                employ.employeeName,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlayfairDisplay',
                ),
              ),
              subtitle: const Text(
                "Hi , Do You no Remmember to me !",
                style: TextStyle(
                  color: AppColor.greenFuscous,
                  // fontFamily: 'PlayfairDisplay',
                ),
              ),
              trailing: Column(
                children: [
                  const Text(
                    "2 min",
                    style: TextStyle(
                      color: AppColor.greenFuscous,
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.greentop,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 1,
                      ),
                      child: Text(
                        "30",
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
