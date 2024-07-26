import 'package:flutter/material.dart';

class PostButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const PostButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.black,
            size: 23,
          )),
    );
  }
}
