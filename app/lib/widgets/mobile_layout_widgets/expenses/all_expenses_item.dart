import 'package:flutter/material.dart';

import '../../../models/all_Expanses_items_model.dart';
import 'is_active_expanses_item.dart';
import 'non_active_expanses_item.dart';

class AllExpansesItem extends StatelessWidget {
  const AllExpansesItem({
    super.key,
    required this.isActive,
    required this.expansesItemsModel,
  });
  final bool isActive;
  final AllExpansesItemsModel expansesItemsModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? IsActiveAllExpensesItem(expansesItemsModel: expansesItemsModel)
        : NonActiveAllExpensesItem(expansesItemsModel: expansesItemsModel);
  }
}
