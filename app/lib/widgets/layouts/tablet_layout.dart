import 'dart:developer';

import 'package:flutter/material.dart';
import '../custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}Tablet layout");

    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 25),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: MobileLayout(),
          ),
        ),
        SizedBox(width: 25),
      ],
    );
  }
}
