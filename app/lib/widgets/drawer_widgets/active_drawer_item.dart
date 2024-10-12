import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/drawer_model.dart';
import '../../utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.model,
  });

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(model.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          model.title,
          style: AppStyles.bold16(context),
        ),
      ),
      trailing: Container(
        width: 3,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
