import 'package:flutter/material.dart';

import '../../../models/chat_item_model.dart';
import 'income_section_item.dart';

class IncomeChartItemsListView extends StatelessWidget {
  const IncomeChartItemsListView({super.key});

  static List<ChatItemModel> items = [
    ChatItemModel(
        color: const Color(0xff208CC8),
        title: "Design service",
        percent: "40%"),
    ChatItemModel(
        color: const Color(0xff4EB7F2),
        title: "Design product",
        percent: "25%"),
    ChatItemModel(
        color: const Color(0xff064061),
        title: "Product royalti",
        percent: "20%"),
    ChatItemModel(
      color: const Color(0xff208CC8),
      title: "Other",
      percent: "22%",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeListTileItem(chatItemModel: e)).toList(),
    );
  }
}
