import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({super.key});

  @override
  State<IcomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IcomeChart> {
  int isactive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: PieChart(getChartData()),
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
          color: const Color(0xff208CC8),
          showTitle: false,
          value: 40,
          radius: isactive == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          showTitle: false,
          value: 25,
          radius: isactive == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          showTitle: false,
          value: 20,
          radius: isactive == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          showTitle: false,
          value: 22,
          radius: isactive == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
