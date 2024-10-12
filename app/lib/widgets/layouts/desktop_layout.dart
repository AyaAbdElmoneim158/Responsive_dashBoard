import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/app_styles.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}desktop layout");
    return Center(
      child: Text(
        "Desktop Layout",
        style: AppStyles.semiBold20(context),
      ),
    );
  }
}
