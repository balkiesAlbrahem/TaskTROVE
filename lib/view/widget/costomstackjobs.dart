import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/models/jobModel.dart';

// ignore: camel_case_types
class stuckformyjobs extends StatelessWidget {
  const stuckformyjobs({super.key, required this.index, required this.job});
  final int index;
  final jobModel job;
  @override
  Widget build(BuildContext context) {
    return index == 0
        ? Stack(
            children: [
              SizedBox(
                width: 320,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, right: 10, bottom: 50),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.greentop,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColor.white,
                                    image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'assets/image/google-image.png'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '   TaskTrove',
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontFamily: 'PlayfairDisplay',
                                          fontSize: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: AppColor.white,
                                              size: 20,
                                            ),
                                            Text(
                                              ' Mirpur,Dhaka',
                                              style: TextStyle(
                                                color: AppColor.white,
                                                fontFamily: 'PlayfairDisplay',
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Lead Product Manager',
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontFamily: 'PlayfairDisplay',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColor.greentop,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  width: 170,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '3700k/m',
                      style: TextStyle(
                        color: AppColor.white,
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 175,
                child: Container(
                  width: 135,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: AppColor.greentop,
                    borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(30),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 35),
                    child: Text(
                      'Apply',
                      style: TextStyle(
                        color: AppColor.white,
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Stack(
            children: [
              SizedBox(
                width: 320,
                height: 180,
                // color: AppColor.gren,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0, right: 10, bottom: 50),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.greentop,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 1.5,
                        bottom: 1.5,
                        right: 1.5,
                        top: 1.5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                            bottomLeft: Radius.circular(0)),
                        color: AppColor.white,
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.greentop2,
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/image/google-image.png'),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '   TaskTrove',
                                          style: TextStyle(
                                            color: AppColor.black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'PlayfairDisplay',
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: AppColor.greenFuscous,
                                                size: 20,
                                              ),
                                              Text(
                                                ' Mirpur,Dhaka',
                                                style: TextStyle(
                                                  color: AppColor.greenFuscous,
                                                  fontFamily: 'PlayfairDisplay',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'Lead Product Manager',
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontFamily: 'PlayfairDisplay',
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColor.greentop,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  width: 170,
                  height: 55,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 1.5, bottom: 1.5, right: 1.5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14)),
                      color: AppColor.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '3700k/m',
                        style: TextStyle(
                          color: AppColor.black,
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 175,
                child: Container(
                  width: 135,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: AppColor.greentop,
                    borderRadius: BorderRadius.only(
                        // topLeft: Radius.circular(30),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 1.5,
                      bottom: 1.5,
                      top: 1.5,
                      right: 1.5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(9),
                          bottomRight: Radius.circular(9),
                          bottomLeft: Radius.circular(9)),
                      color: AppColor.white,
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          color: AppColor.black,
                          fontFamily: 'PlayfairDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
