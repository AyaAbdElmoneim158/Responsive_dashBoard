import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class IncomeChartWithDetails extends StatefulWidget {
  const IncomeChartWithDetails({super.key});

  @override
  State<IncomeChartWithDetails> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IncomeChartWithDetails> {
  int isactive = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: PieChart(getChartData()),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          isactive = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: isactive == 0 ? 1.5 : null,
          showTitle: true,
          title: isactive == 0 ? "Design service" : "40",
          color: const Color(0xff208CC8),
          titleStyle: AppStyles.semiBold18(context)
              .copyWith(color: isactive == 0 ? null : Colors.white),
          value: 40,
          radius: isactive == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: isactive == 1 ? 2 : null,
          title: isactive == 1 ? "Design product" : "25",
          color: const Color(0xff4EB7F2),
          titleStyle: AppStyles.semiBold18(context)
              .copyWith(color: isactive == 1 ? null : Colors.white),
          value: 25,
          radius: isactive == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: isactive == 2 ? 1.4 : null,
          title: isactive == 2 ? "Product royalti" : "20",
          color: const Color(0xff064061),
          titleStyle: AppStyles.semiBold18(context)
              .copyWith(color: isactive == 2 ? null : Colors.white),
          value: 20,
          radius: isactive == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: isactive == 3 ? 1.5 : null,
          title: isactive == 3 ? "Other" : "22",
          color: const Color(0xffE2DECD),
          titleStyle: AppStyles.semiBold18(context)
              .copyWith(color: isactive == 3 ? null : Colors.white),
          value: 22,
          radius: isactive == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
