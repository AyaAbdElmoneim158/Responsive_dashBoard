import 'package:flutter/material.dart';

import '../../models/drawer_model.dart';
import 'active_drawer_item.dart';
import 'inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.model,
    required this.isActive,
  });
  final DrawerItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(model: model) : InactiveDrawerItem(model: model);
  }
}
