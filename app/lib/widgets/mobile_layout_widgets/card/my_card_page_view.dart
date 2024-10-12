import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'my_card_Item.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      children: List.generate(
        3,
        (index) {
          return const MyCardItem();
        },
      ),
    );
  }
}
