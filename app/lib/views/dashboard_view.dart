import 'dart:developer';
import 'package:flutter/material.dart';
import '../widgets/adaptive_layout.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/desktop_layout.dart';
import '../widgets/mobile_layout.dart';
import '../widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      AppBar(
      backgroundColor: const Color(0xff4EB7F2),
      elevation: 20,
      title: Text(
        "Responsive Dashboard",
        style: AppStyles.semiBold20(context).copyWith(color: Colors.white),
      ),
    );        
    );
  }
}
