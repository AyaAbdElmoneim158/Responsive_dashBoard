import 'dart:developer';

import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}Tablet layout");

    return Center(
      child: Text(
        "Tablet Layout",
        style: AppStyles.semiBold20(context),
      ),
    );
  }
}
