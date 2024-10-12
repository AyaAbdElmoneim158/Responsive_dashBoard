import 'dart:developer';
import 'package:app/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/layouts/desktop_layout.dart';
import '../widgets/layouts/mobile_layout.dart';
import '../widgets/layouts/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 800 ? const Drawer(child: CustomDrawer()) : null,
      appBar: MediaQuery.of(context).size.width < 800 ? const CustomAppBar() : null,
       backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: AdaptiveLayout(
        mobileCustomLayout: (context) => const MobileLayout(),
        tabletCustomLayout: (context) => const TabletLayout(),
        desktopCustomLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
