import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progectbalkies/constants/Appcolor.dart';
import 'package:progectbalkies/view/screen/comment.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart ' as http;

// ignore: camel_case_types
class newsbottom extends StatelessWidget {
  final String pronam;
  final String dat;

  final String proimag;
  final String proimag2;
  const newsbottom(
      {super.key,
      required this.pronam,
      required this.dat,
      required this.proimag,
      required this.proimag2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Row(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: SizedBox(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.thumb_up_alt_outlined,
                            color: AppColor.moov,
                            size: 20,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: AppColor.gren,
                            size: 20,
                          ),
                          Text(
                            "2K",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: AppColor.gren,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150),
                    child: SizedBox(
                      width: 120,
                      child: Text(
                        "comments 8000 ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColor.gren,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: AppColor.gren,
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: AppColor.moov,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    Get.to(Comments(id_post: 3,));
                  },
                  icon: const Icon(
                    Icons.comment,
                    color: AppColor.moov,
                    size: 30,
                  )),
              // IconButton(
              //     onPressed: () {
              //       // Share.share("text");
              //     },
              //     icon: const Icon(
              //       Icons.share_sharp,
              //       color: AppColor.moov,
              //       size: 30,
              //     )),
              _shareButton(
                () async {
                  final url = Uri.parse(proimag2);
                  final response = await http.get(url);
                  Share.shareXFiles([
                    XFile.fromData(response.bodyBytes,
                        name: "Track trove ", mimeType: "Image/png"),
                  ], text: dat, subject: pronam);
                },
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border_outlined,
                    color: AppColor.moov,
                    size: 30,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
          child: Container(
            color: AppColor.gren,
            height: 2.0,
          ),
        )
      ],
    );
  }

  _shareButton(Function()? onPressed) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.share_sharp,
          color: AppColor.moov,
          size: 30,
        ));
  }
}
