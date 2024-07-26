import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/Screentoveiwjobs.dart';
import 'package:progectbalkies/view/screen/sceendetailscompany.dart';
import 'package:progectbalkies/view/widget/costomcatugoryone.dart';
import 'package:progectbalkies/view/widget/costomimageforcompany.dart';
import 'package:progectbalkies/view/widget/costomnameforcomany.dart';

class screencategury extends StatefulWidget {
  const screencategury({super.key});

  @override
  State<screencategury> createState() => _screencateguryState();
}

List<String> listcatugory = [
  "ui-ux developer",
  "Bockend Developer",
  "Graphic Design",
  "Flutter Developer",
  "ui-ux developer",
  "Bockend Developer",
  // "Graphic Design",
  "web Developer",
  "More"
];

// ignore: camel_case_types
class _screencateguryState extends State<screencategury> {
  final List<String> imglist = [
    "https://i.pinimg.com/474x/5b/dc/10/5bdc1011d9eb8d138d3a04df8dcae3e3.jpg",
    "https://i.pinimg.com/236x/91/dd/36/91dd36ce4fca3b9a4615cc1b02c39f19.jpg",
    "https://i.pinimg.com/236x/6f/20/0f/6f200fcac49075c69ee3a92fb915043b.jpg",
    "https://i.pinimg.com/236x/89/62/e5/8962e5706539633594bf71b291af3724.jpg",
    "https://i.pinimg.com/236x/ab/f1/3f/abf13fb774da33c5057e1856d978e604.jpg",
    "https://i.pinimg.com/564x/de/86/99/de86991342da3d25cac3def6b92c5ed6.jpg"
  ];

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrowerOpen = false;
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
      child: Padding(
        padding: const EdgeInsets.only(
          // left: 15,
          // right: 10,
          top: 40,
        ),
        child: Column(
          children: [
            Row(
              children: [
                isDrowerOpen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrowerOpen = false;
                          });
                        },
                        icon: const Icon(Icons.arrow_back_ios))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrowerOpen = true;
                          });
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Color(0xff416d6d),
                        ),
                      ),
              ],
            ),
            const Text(
              "Categories",
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: AppColor.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                // fontFamily: "LibreBaskerville",
              ),
            ),
            // const Costomfirstcatugory(),
            Container(
              height: 280,
              width: 420,
              // color: AppColor.black,
              // decoration: BoxDecoration(
              //   // gradient: const LinearGradient(
              //   //     // end: Alignment.centerRight,
              //   //     begin: Alignment.bottomCenter,
              //   //     colors: [
              //   //       AppColor.white,
              //   //       AppColor.greentop2,
              //   //       AppColor.greentop2,
              //   //       Color.fromARGB(255, 95, 255, 26),
              //   //     ]),

              //   borderRadius: BorderRadius.circular(40),
              //   // color: Colors.white,
              // ),
              // color: AppColor.greentop2,
              child: GridView.builder(
                  itemCount: listcatugory.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3.9,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(veiwlistjobs(
                          title: listcatugory[index],
                        ));
                      },
                      child: costomonecatugofory(
                        titlecatu: listcatugory[index],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Companys",
              style: const TextStyle(
                fontFamily: 'PlayfairDisplay',
                color: AppColor.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                // fontFamily: "LibreBaskerville",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // InkWell(
            //   onTap: () {
            //     Get.to(
            //       const sceendetailscompany(),
            //     );
            //   },
            //   child: Container(
            //     height: 270,
            //     width: 170,
            //     decoration: BoxDecoration(
            //       boxShadow:  [
            //         BoxShadow(
            //           spreadRadius: 2, blurRadius: 5, color: AppColor.white,
            //           // color: AppColor.mooov.withOpacity(0.9),
            //           // color: AppColor.yallo.withOpacity(0.19),
            //         ),
            //       ],
            //       borderRadius: BorderRadius.circular(15),
            //       color: AppColor.gren,
            //       // color: AppColor.greentop3,
            //     ),
            //     child: const Padding(
            //       padding: EdgeInsets.only(top: 20),
            //       child: Column(
            //         children: [
            //           costomimageforcompany(),
            //           costomnameforcomany(
            //             namecompany: "Google",
            //             secondname: "300 Employees",
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              height: 360,
              width: 400,
              child: CarouselSlider(
                  items: imglist
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.black,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColor.white,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(e),
                                        ),
                                      ),
                                    ),
                                    // Text(
                                    //   " data",
                                    //   style: TextStyle(
                                    //     color: AppColor.white,
                                    //     fontFamily: 'PlayfairDisplay',
                                    //   ),
                                    // )
                                  ],
                                ),
                                const costomnameforcomany(
                                  namecompany: "Google",
                                  secondname: "300 Employees",
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    aspectRatio: 3 / 2,
                    height: 320,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.vertical,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
