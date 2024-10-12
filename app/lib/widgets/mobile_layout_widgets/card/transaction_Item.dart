import 'package:flutter/material.dart';

import '../../../models/transaction_model.dart';
import '../../../utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title:
            Text(transactionModel.title, style: AppStyles.semiBold16(context)),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.regular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.price,
          style: AppStyles.semiBold20(context).copyWith(
            color: transactionModel.withdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
