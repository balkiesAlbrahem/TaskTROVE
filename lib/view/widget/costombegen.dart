import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class newsbegen extends StatelessWidget {
  final String proname;
  final String data;
  final String proimage;
  const newsbegen(
      {super.key,
      required this.proname,
      required this.data,
      required this.proimage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 73,
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                ),
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.gren,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: NetworkImage(
                          proimage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 270,
                    height: 30,
                    child: Text(
                      proname,
                      style: const TextStyle(
                          // ignore: unrelated_type_equality_checks
                          // color:   themes.customlighttheme
                          //     ? AppColor.black
                          //     : AppColor.gren,
                          color: AppColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 270,
                    height: 40,
                    child: Text(
                      data,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
                width: 63,
                // color: AppColor.primaryColor,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
