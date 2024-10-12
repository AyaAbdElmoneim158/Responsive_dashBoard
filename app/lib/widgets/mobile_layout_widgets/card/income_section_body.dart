import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import 'Income_chartItems_listview.dart';
import 'income_chart.dart';
import 'income_chart_with_details.dart';

class IcomeSectionBody extends StatelessWidget {
  const IcomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width <= 1750
        ? const IncomeChartWithDetails()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IcomeChart()),
              SizedBox(width: 1),
              Expanded(flex: 2, child: IncomeChartItemsListView())
            ],
          );
  }
}
