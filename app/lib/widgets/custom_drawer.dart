import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/drawer_model.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import 'drawer_widgets/drawer_items_list_view.dart';
import 'drawer_widgets/inactive_drawer_item.dart';
import 'drawer_widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
  static UserInfoModel userInfo = UserInfoModel(
    image: Assets.imageAvatar,
    title: "Lekan Okeowo",
    subtitle: "demo@gmail.com",
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.only(left: 28, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfo: userInfo,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            const DrawerItemsListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  InactiveDrawerItem(
                    model: DrawerItemModel(
                      title: "Setting system",
                      image: Assets.imageSetting,
                    ),
                  ),
                  InactiveDrawerItem(
                    model: DrawerItemModel(
                      title: "Logout account",
                      image: Assets.imageLogout,
                    ),
                  ),
                  const SizedBox(height: 48)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
