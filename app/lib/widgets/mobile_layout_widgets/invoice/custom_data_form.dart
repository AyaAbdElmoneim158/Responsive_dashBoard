import 'package:flutter/material.dart';

import 'title_text_field.dart';

class CustomerDataForm extends StatelessWidget {
  const CustomerDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: "Customer name", hent: "Type customer name"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: "Customer Email", hent: "Type customer email"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: "Item name", hent: "Type customer name"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(title: "USD", hent: "Item mount"),
            ),
          ],
        ),
      ],
    );
  }
}
