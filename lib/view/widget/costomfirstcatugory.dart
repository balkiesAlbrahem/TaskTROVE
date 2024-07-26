import 'package:flutter/material.dart';
import 'package:progectbalkies/view/widget/costomcatugoryone.dart';

class Costomfirstcatugory extends StatelessWidget {
  const Costomfirstcatugory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: AppColor.fuscousMoov,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              costomonecatugofory(
                titlecatu: 'ui-ux developer',
              ),
              costomonecatugofory(
                titlecatu: 'Graphic Design',
              ),
              costomonecatugofory(
                titlecatu: 'ui-ux developer',
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              costomonecatugofory(
                titlecatu: 'ui-ux developer',
              ),
              costomonecatugofory(
                titlecatu: 'web developer',
              ),
              costomonecatugofory(
                titlecatu: 'More',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
