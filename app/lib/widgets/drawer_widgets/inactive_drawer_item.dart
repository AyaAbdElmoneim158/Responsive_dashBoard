import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/drawer_model.dart';
import '../../utils/app_styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
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
          style: AppStyles.regular16(context),
        ),
      ),
    );
  }
}
