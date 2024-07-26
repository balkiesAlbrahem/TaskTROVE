import 'package:flutter/material.dart';

class RowfacGog extends StatelessWidget {
  const RowfacGog({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 103, 157, 250)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Facbock",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white54),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Google",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            )),
      ],
    );
  }
}
