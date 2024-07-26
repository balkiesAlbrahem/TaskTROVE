// ignore: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/services/get_alljobmodel.dart';
import 'package:progectbalkies/view/widget/costomrecentjobs.dart';

// ignore: camel_case_types
class veiwlistjobs extends StatefulWidget {
  const veiwlistjobs({super.key, required this.title});
  final String title;

  @override
  State<veiwlistjobs> createState() => _veiwlistjobsState();
}

// ignore: camel_case_types
class _veiwlistjobsState extends State<veiwlistjobs> {
  double width = 0;
  bool myAnimation = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        myAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
            )),
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: AppColor.greentop,
            fontFamily: 'PlayfairDisplay',
            fontSize: 20,
          ),
        ),
      ),
      body: FutureBuilder(
        future: Alljob().getalljob(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List jobs = snapshot.data!;
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500 + (index * 200)),
                  curve: Curves.easeIn,
                  transform:
                      Matrix4.translationValues(myAnimation ? 0 : width, 0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: costomrecentjobs(
                      jodM: jobs[index],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 6,
                color: AppColor.black,
              ),
            );
          }
        },
      ),
    );
  }
}
