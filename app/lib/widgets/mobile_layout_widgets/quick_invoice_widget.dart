import 'package:flutter/material.dart';

import 'custom_backgroud_container.dart';
import 'invoice/custom_data_form.dart';
import 'invoice/latest_transaction.dart';
import 'invoice/quick_invoice_buttom_widget.dart';
import 'invoice/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, thickness: 1, color: Color(0xffF1F1F1)),
          CustomerDataForm(),
          SizedBox(height: 24),
          QuickInvoiceBottomWidget()
        ],
      ),
    );
  }
}
