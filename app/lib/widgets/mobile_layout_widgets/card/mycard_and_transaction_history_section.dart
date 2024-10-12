import 'package:flutter/cupertino.dart';

import '../custom_backgroud_container.dart';
import 'Transaction_history_header.dart';
import 'my_card_section.dart';
import 'transaction_history_items_list.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardSection(),
            TransactionHistoryHeader(),
            TransactionHistoryItemsList()
          ],
        ),
      ),
    );
  }
}
