import 'package:flutter/material.dart';

import 'custom_backgroud_container.dart';
import 'expenses/all_Expanses_items_body.dart';
import 'expenses/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpansesItemBody(),
        ],
      ),
    );
  }
}
