import 'package:flutter/material.dart';
import '../../models/drawer_model.dart';
import '../../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int active = 0;

  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: Assets.imageDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imageMyTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imageStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imageWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imageMyinvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (active != index) {
              setState(() {
                active = index;
                debugPrint("$active");
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              model: drawerItems[index],
              isActive: active == index,
            ),
          ),
        );
      },
    );
  }
}
