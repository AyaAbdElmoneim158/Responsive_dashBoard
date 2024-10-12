import 'dart:developer';

import 'package:flutter/material.dart';

import '../mobile_layout_widgets/all_expenses_and_quick_invoice_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}Mobile layout");

    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpansesAndQuickInvoiceSection(),
        ],
      ),
    );
  }
}
