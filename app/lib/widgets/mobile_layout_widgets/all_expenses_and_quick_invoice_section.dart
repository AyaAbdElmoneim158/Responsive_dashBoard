import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice_widget.dart';

class AllExpansesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoiceWidget(),
      ],
    );
  }
}
