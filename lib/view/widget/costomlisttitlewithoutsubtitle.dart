import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class costomlisttitewithoutsubtitle extends StatelessWidget {
  final String title;
  final String subtitle = "";
  final IconData icon2;
  final IconData icon1;
  final Color colorfront;
  final void Function()? onpressed;
  const costomlisttitewithoutsubtitle({
    super.key,
    required this.title,
    this.onpressed,
    required this.icon2,
    required this.icon1,
    required this.colorfront,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29), color: colorfront),
              child: Icon(
                icon1,
                color: AppColor.white,
              ),
            ),
            SizedBox(
              width: 150,
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon2,
                color: colorfront,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
