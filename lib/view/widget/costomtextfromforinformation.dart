import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class CustomTextFormforinformation extends StatelessWidget {
  // final String hintText;
  // final String labelText;
  final IconData iconData;
  // final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final void Function(String)? onChanged;
  // final bool? obscureText;
  // final void Function()? onTapIcon;
  const CustomTextFormforinformation(
      {super.key,
      // this.obscureText,
      // // this.onTapIcon,
      // required this.hintText,
      // required this.labelText,
      required this.iconData,
      // required this.mycontroller,
      required this.valid,
      required this.isNumber,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        onChanged: onChanged,
        // controller: mycontroller,
        // obscureText: obscureText==null||obscureText==false ? false : true,
        decoration: const InputDecoration(
          iconColor: AppColor.black,
          // hintText: hintText,
          // hintStyle: const TextStyle(
          //   fontSize: 13,
          //   color: AppColor.white,
          // ),
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: Icon(
          //   iconData,
          //   size: 20,
          //   color: AppColor.black,
          // ),
          contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
        ),
      ),
    );
  }
}
