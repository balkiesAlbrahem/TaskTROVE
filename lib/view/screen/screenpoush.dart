// import 'package:flutter/material.dart';

// class screenpoush extends StatefulWidget {
//   const screenpoush({super.key});

//   @override
//   State<screenpoush> createState() => _screenpoushState();
// }

// class _screenpoushState extends State<screenpoush> {
// double xOffset = 0;
//   double yOffset = 0;
//   double scaleFactor = 1;
//   bool isDrowerOpen = false;
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       transform: Matrix4.translationValues(xOffset, yOffset, 0)
//         ..scale(scaleFactor)
//         ..rotateY(isDrowerOpen ? -0.5 : 0),
//       duration: const Duration(
//         milliseconds: 230,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(isDrowerOpen ? 40 : 0.0),
//         color: Colors.white,
//       ),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 30, left: 20),
//             child: Row(
//               children: [
//                 isDrowerOpen
//                     ? IconButton(
//                         onPressed: () {
//                           setState(() {
//                             xOffset = 0;
//                             yOffset = 0;
//                             scaleFactor = 1;
//                             isDrowerOpen = false;
//                           });
//                         },
//                         icon: const Icon(Icons.arrow_back_ios))
//                     : IconButton(
//                         onPressed: () {
//                           setState(() {
//                             xOffset = 230;
//                             yOffset = 150;
//                             scaleFactor = 0.6;
//                             isDrowerOpen = true;
//                           });
//                         },
//                         icon: const Icon(
//                           Icons.menu,
//                           color: Color(0xff416d6d),
//                         ),
//                       ),
//               ],
//             ),
//           ),
//           Text("pouch")
//         ],
//       ),
//     );
//   }
// }