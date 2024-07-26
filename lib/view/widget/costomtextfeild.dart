import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: must_be_immutable
class CustomTextForm extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final void Function(String)? onChanged;
  Function()? opress = () {};

  // final bool? obscureText;
  // final void Function()? onTapIcon;
  CustomTextForm(
      {super.key,
      // this.obscureText,
      // this.onTapIcon,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      // required this.mycontroller,
      required this.valid,
      required this.isNumber,
      required this.onChanged,
      this.opress,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        onChanged: onChanged,
        controller: mycontroller,
        // obscureText: obscureText==null||obscureText==false ? false : true,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:  TextStyle(
            fontSize: 12,
            color: AppColor.white,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 9, horizontal: 25),
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              labelText,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: "playfiarDisplay",
                color: AppColor.blue,
              ),
            ),
          ),
          suffixIcon: iconData == Icons.remove_red_eye
              ? IconButton(
                  onPressed: opress,
                  icon: Icon(
                    iconData,
                    size: 20,
                    color: AppColor.black,
                  ))
              : Icon(
                  iconData,
                  size: 20,
                  color: AppColor.blue,
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}





  // Container(
  //                             decoration: BoxDecoration(
  //                                 color: AppColor.white,
  //                                 borderRadius: BorderRadius.circular(90)),
  //                             height: 48,
  //                             child: TextFormField(
  //                               // keyboardType: isNumber
  //                               //     ? const TextInputType.numberWithOptions(decimal: true)
  //                               //     : TextInputType.text,
  //                               // validator: valid,
  //                               // onChanged: onChanged,
  //                               // controller: mycontroller,
  //                               // obscureText: obscureText==null||obscureText==false ? false : true,
  //                               decoration: InputDecoration(
  //                                 // hintText: hintText,
  //                                 hintStyle: const TextStyle(
  //                                   fontSize: 12,
  //                                   color: AppColor.white,
  //                                 ),
  //                                 floatingLabelBehavior:
  //                                     FloatingLabelBehavior.always,
  //                                 contentPadding: const EdgeInsets.symmetric(
  //                                     vertical: 9, horizontal: 25),
  //                                 label: Container(
  //                                   padding: const EdgeInsets.symmetric(
  //                                       horizontal: 8),
  //                                   // child: Text(
  //                                   //   labelText,
  //                                   //   style: const TextStyle(
  //                                   //     fontSize: 18,
  //                                   //     fontFamily: "playfiarDisplay",
  //                                   //     color: AppColor.black,
  //                                   //   ),
  //                                   // ),
  //                                 ),
  //                                 // suffixIcon:Icon(
  //                                 //   iconData,
  //                                 //   size: 23,
  //                                 //   color: AppColor.primaryColor,
  //                                 // ),
  //                                 border: OutlineInputBorder(
  //                                   borderRadius: BorderRadius.circular(30),
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
