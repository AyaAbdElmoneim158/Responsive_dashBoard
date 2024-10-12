import 'package:flutter/cupertino.dart';

import 'dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key, required this.currentpage});

  final int currentpage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: DotIndicator(isActive: index == currentpage),
          );
        },
      ),
    );
  }
}
