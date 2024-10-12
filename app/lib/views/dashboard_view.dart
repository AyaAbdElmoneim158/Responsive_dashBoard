import 'dart:developer';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 800 ? const Drawer(child: CustomDrawer()) : null,
      appBar: MediaQuery.of(context).size.width < 800 ? const CustomAppBar() : null,
    );
  }
}
