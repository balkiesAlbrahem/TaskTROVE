import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/widget/costomconstant.dart';

class Screensettingabout extends StatelessWidget {
  const Screensettingabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: const Column (
        children: [
          costomconstant3(
            titleconst: "TaskTROVE  ",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "   About Our Application :",
            style: TextStyle(
              // fontFamily: 'PlayfairDisplay',
              // color: AppColor.greentop,
              fontSize: 20,
              // fontWeight: FontWeight.bold,
              fontFamily: "LibreBaskerville",
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "You need to be online to open this on this device. To open this on this device when offline,to open this on this device. To open this on this device when offline,to open this on this device. To open this on this device when offline, You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go onlineTo open this on this device when offline,to open this on this device. To open this on this device when offline,to open this on this device. To open this on this device when offline, go to the ‘Offline Permissions’ setting in the Store Settings page. You can change this settingthe next time you go online. the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you go online the Store Settings page. You can change this settingthe next time you ",
                style: TextStyle(
                  // fontFamily: 'PlayfairDisplay',
                  color: AppColor.greenFuscous,
                  // fontSize: 18,
                  // fontWeight: FontWeight.w600,
                  fontFamily: "LibreBaskerville",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
