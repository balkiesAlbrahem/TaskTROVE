import 'package:flutter/material.dart';
import 'package:progectbalkies/constants/menuitem.dart';

class screenmenu extends StatelessWidget {
  const screenmenu({super.key, required this.currentItem, required this.onSelectedItem});
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
