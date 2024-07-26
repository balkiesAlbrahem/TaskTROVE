import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectbalkies/view/widget/costombegen.dart';
import 'package:progectbalkies/view/widget/costomnewsbottom.dart';

class CostomNows extends StatelessWidget {
  final String proname;
  final String data;
  final String date;
  final String proimage;
  final String proimage2;
  const CostomNows(
      {super.key,
      required this.proname,
      required this.data,
      required this.proimage,
      required this.proimage2,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 560,
      width: 300,
      // color: AppColor.gren,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          newsbegen(proimage: proimage, proname: proname, data: date),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 390,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 30,
                        // color: AppColor.gren,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            data,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 360,
                        child: Image(
                          image: NetworkImage(proimage2),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                newsbottom(
                  pronam: proname,
                  proimag: proimage,
                  proimag2: proimage2,
                  dat: data,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
