import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

class costomonecatugofory extends StatelessWidget {
  costomonecatugofory({super.key, required this.titlecatu});
  final String titlecatu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: IntrinsicHeight(
        child: IntrinsicWidth(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.9),
              color: titlecatu != 'More' ? AppColor.gren : AppColor.greentop,
            ),
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    titlecatu,
                    style: TextStyle(
                      fontSize: 14,
                      color: titlecatu != 'More'
                          ? AppColor.greenFuscous
                          : AppColor.greentop,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
