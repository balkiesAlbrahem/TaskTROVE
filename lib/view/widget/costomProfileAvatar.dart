import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class ProfileAvatar extends StatelessWidget {
  final Widget? profilePhoto;
  const ProfileAvatar({super.key, this.profilePhoto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.black12,
        borderRadius: BorderRadius.circular(999999),
        // shape:BoxShape.circle,
        // image: DecorationImage(image: profilePhoto)
      ),
      clipBehavior: Clip.antiAlias,
      child: profilePhoto ?? Container(color: AppColor.greentop3),
    );
  }
}
