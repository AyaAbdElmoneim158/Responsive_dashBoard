import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../custom_drawer.dart';
import '../mobile_layout_widgets/all_expenses_and_quick_invoice_section.dart';
import '../mobile_layout_widgets/my_card_income_transaction_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}desktop layout");
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 25),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpansesAndQuickInvoiceSection(),
                        ),
                      ),
                      SizedBox(width: 25),
                      Expanded(child: MyCardAndIncomeAndTransactionSection())
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
