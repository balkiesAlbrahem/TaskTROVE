import 'package:flutter/material.dart';

class listnextcolor {
  List<Color> backgroundColor = [
    const Color.fromRGBO(200, 162, 249, 1),
    const Color.fromARGB(255, 124, 253, 130),
    // const Color.fromARGB(255, 161, 252, 232),
    const Color.fromARGB(177, 227, 124, 186),
    const Color.fromARGB(255, 119, 142, 244),
    // const Color.fromARGB(186, 213, 247, 103),
    const Color.fromARGB(255, 255, 136, 136),
    const Color.fromARGB(255, 246, 171, 191),
  ];

  int currentIndex = 0;
  Color getNextColor() {
    Color nextColor = backgroundColor[currentIndex];
    currentIndex = (currentIndex + 1) % backgroundColor.length;
    return nextColor;
  }
}
