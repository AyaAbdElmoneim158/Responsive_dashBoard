import 'package:flutter/material.dart';
import 'quick_invoice_button.dart';

class QuickInvoiceBottomWidget extends StatelessWidget {
  const QuickInvoiceBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        QuickInvoiceButton(
            text: "Add more details",
            textColor: Color(0xff4EB7F2),
            backgroundColor: Colors.white),
        SizedBox(width: 24),
        QuickInvoiceButton(text: "Send Money")
      ],
    );
  }
}
