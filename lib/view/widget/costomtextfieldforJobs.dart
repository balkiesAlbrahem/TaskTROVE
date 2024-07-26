
import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/Appcolor.dart';

// ignore: camel_case_types
class textfeildForJob extends StatelessWidget {
  const textfeildForJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 225, 223, 223),
      ),
      width: 380,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.search_sharp,
                  size: 23,
                  color: AppColor.gren,
                ),
                Text(
                  '  Search your Job',
                  style: TextStyle(color: AppColor.gren, fontSize: 16),
                )
              ],
            ),
          ),
          // contentPadding: const EdgeInsets.only(left: 87),
          // suffixIcon: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.search,
          //       size: 20,
          //       color: AppColor.moov,
          //     )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
