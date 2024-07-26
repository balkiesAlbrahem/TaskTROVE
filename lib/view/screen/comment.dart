import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/comment_model.dart';
import 'package:progectbalkies/models/employprofile.dart';
import 'package:progectbalkies/services/addcommentpostservices.dart';
import 'package:progectbalkies/services/getProEmployServices.dart';
import 'package:progectbalkies/services/getallcomments.dart';
import 'package:progectbalkies/view/screen/screenshowprofileemployee.dart';
import 'package:progectbalkies/view/widget/costomcomments.dart';
import 'package:progectbalkies/view/widget/cosyomTextInputSubmit.dart';

class Comments extends StatefulWidget {
  final int id_post;
  Comments({super.key, required this.id_post});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final textController = TextEditingController();

  var isEmpty = true;
  void submit() {
    print("one");
    Addcomment().Authaddcomment(widget.id_post, textController.text);
    print("tow");
    textController.clear();
  }

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
        centerTitle: true,
        backgroundColor: AppColor.greentop,
        title: Text(
          " Comments ",
          style: TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
            fontFamily: "PlayfairDisplay",
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:  Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColor.white,
            )),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: AppColor.gren,
                            size: 20,
                          ),
                        ),
                        Text("5 Like"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.comment_sharp,
                            size: 20,
                          ),
                        ),
                        Text(
                          " 30 omments",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 600,
                child: FutureBuilder<List<comment_Model>>(
                    future: AllcommentForPostServices()
                        .getallcommentforpost(widget.id_post),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<comment_Model> comments = snapshot.data!;
                        return LayoutBuilder(
                          builder: (context, constraints) {
                            // final screen = constraints.biggest;
                            return SizedBox(
                              // width: screen.width,
                              // height: screen.height,
                              child: ListView.separated(
                                itemCount: comments.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 32),
                                itemBuilder: (context, index) {
                                  return FutureBuilder<employprofile_Model>(
                                    future: ProfileEmployeeServices()
                                        .getProfileEmployeeServices(
                                            comments[index].id_employee),
                                    builder: (context, profileSnapshot) {
                                      if (profileSnapshot.hasData) {
                                        employprofile_Model employeeprofile =
                                            profileSnapshot.data!;
                                        print(
                                            " employprofile_Model employeeprofile ${employeeprofile}");
                                        return costomcomments(
                                          showprofile: () {
                                            Get.to(screenshowprofileemployee(
                                                id: employeeprofile.id,
                                                employeeName: employeeprofile
                                                    .employeeName,
                                                profileImage: employeeprofile
                                                    .profileImage,
                                                location:
                                                    employeeprofile.location,
                                                employeeSpecialization:
                                                    employeeprofile
                                                        .employeeSpecialization,
                                                employeeAcademicStatus:
                                                    employeeprofile
                                                        .employeeAcademicStatus,
                                                employeeComunnicationTool:
                                                    employeeprofile
                                                        .employeeComunnicationTool,
                                                expectedSalary: employeeprofile
                                                    .expectedSalary,
                                                yearsOfExperience:
                                                    employeeprofile
                                                        .yearsOfExperience));
                                          },
                                          image:
                                              "assets/image/ai-generated-8491587_1280.jpg",
                                          name: employeeprofile.employeeName,
                                          comment: comments[index].comment,
                                          time: DateTime.parse(
                                              comments[index].created_at),
                                        );
                                      } else if (profileSnapshot.hasError) {
                                        return Text(
                                            'Error: ${profileSnapshot.error}');
                                      } else {
                                        return const Center(
                                            child: CircularProgressIndicator());
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
                          child: CircularProgressIndicator(),
                        );
                      }
                      
                    }),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            child: TextInputSubmit(
              hintText: 'write your comments',
              controller: textController,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              backgroundColor: AppColor.black12,
              onSubmitted: (_) => submit,
              onChange: (text) {
                setState(() => isEmpty = text.isEmpty);
              },
              hintStyle: const TextStyle(
                color: AppColor.black,
              ),
              textStyle: const TextStyle(
                color: AppColor.black,
              ),
              trailings: [
                if (!isEmpty)
                  IconButton(
                      onPressed: submit,
                      icon: const Icon(
                        Icons.send,
                        color: Colors.black,
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
