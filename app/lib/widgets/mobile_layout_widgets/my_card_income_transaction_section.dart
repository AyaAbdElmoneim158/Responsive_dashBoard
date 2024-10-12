import 'package:flutter/material.dart';

import 'card/income_section.dart';
import 'card/mycard_and_transaction_history_section.dart';

class MyCardAndIncomeAndTransactionSection extends StatelessWidget {
  const MyCardAndIncomeAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransactionHistorySection(),
        SizedBox(height: 24),
        IncomeSection(),
      ],
    );
  }
}
