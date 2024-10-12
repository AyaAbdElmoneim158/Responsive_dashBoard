import 'dart:developer';

import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}Mobile layout");

    return Center(
      child: Text(
        "Mobile Layout",
        style: AppStyles.semiBold20(context),
      ),
    );
  }
}
