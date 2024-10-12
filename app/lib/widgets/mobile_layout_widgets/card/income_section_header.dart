import 'package:flutter/cupertino.dart';

import '../../../utils/app_styles.dart';
import '../expenses/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.semiBold20(context)),
        const RangeOptions()
      ],
    );
  }
}
