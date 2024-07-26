import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/mypost.dart';
import 'package:progectbalkies/services/getallpostservices.dart';
import 'package:progectbalkies/view/widget/costompostes.dart';
import 'package:progectbalkies/view/widget/costomtitlebegin.dart';

// ignore: camel_case_types
class screenmypostesonly extends StatefulWidget {
  const screenmypostesonly(
      {super.key,
      required this.employname,
      required this.employimage,
      required this.employlocation,
      required this.employid});
  final String employname;
  final int employid;
  final String employimage;
  final String employlocation;
  @override
  State<screenmypostesonly> createState() => _screenmypostesonlyState();
}

// ignore: camel_case_types
class _screenmypostesonlyState extends State<screenmypostesonly> {
  
  @override
  void initState() {
    super.initState();
    // يمكنك هنا استخدام البيانات الممررة من الشاشة الأولى

    // employlocation = "Unknown"; // على سبيل المثال
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.greentop,
          // centerTitle: true,
          title: costomtitlebegin(
            mycolor: AppColor.white,
            title: "          His Postes",
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: AppColor.white,
              ))),
      body: Stack(
        children: [
          FutureBuilder<List<mypostModel>>(
              future: AllpostServices().getallpost(),
              //  OnlyEmployeepostServices()
              //     .getOnlyEmployeepost(widget.employid),
              builder: (context, snapshot) {
                print(
                    "balkies should look here////////////////// ${snapshot.hasData}");
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
                            return Post(
                              showprofile: () {},
                              id_post: postes[index].id,
                              profilePhoto: Image.asset('assets/image/☾.jpeg'),
                              // Container(color: Colors.blue),
                              name: widget.employname,
                              date: DateTime.parse(postes[index].created_at),
                              text: postes[index].post,
                              location: widget.employlocation,
                              // comments: const [
                             
                              // ],
                              image: Image.asset('assets/image/☾.jpeg'),
                            );
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ],
      ),
    );
  }
}
