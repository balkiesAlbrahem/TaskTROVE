import 'package:flutter/cupertino.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class costomimageforcompany extends StatelessWidget {
  const costomimageforcompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColor.white),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2, blurRadius: 5, color: AppColor.white,
              // color: AppColor.mooov.withOpacity(0.9),
              // color: AppColor.yallo.withOpacity(0.19),
            ),
          ],
          shape: BoxShape.circle,
          image: const DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/image/google-image.png")),
        ),
      ),
    );
  }
}
