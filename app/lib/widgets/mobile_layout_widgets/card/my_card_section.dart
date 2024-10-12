import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import 'dot_indicator_list.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text("My card", style: AppStyles.semiBold20(context)),
        const SizedBox(height: 19),
        MyCardPageView(controller: pageController),
        const SizedBox(height: 19),
        DotIndicatorList(currentpage: currentPage),
        const Divider(color: Color(0xffF1F1F1), height: 40),
      ],
    );
  }
}
