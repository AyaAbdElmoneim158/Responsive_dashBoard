import 'package:flutter/cupertino.dart';

import '../../../models/transaction_model.dart';
import 'transaction_Item.dart';

class TransactionHistoryItemsList extends StatelessWidget {
  const TransactionHistoryItemsList({super.key});
  static List<TransactionModel> items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      price: r"$20,129",
      withdrawal: true,
    ),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        price: r"$2,000",
        withdrawal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        price: r"$20,129",
        withdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
