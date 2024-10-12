import 'package:flutter/material.dart';
import '../../../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.semiBold20(context),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 25,
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
