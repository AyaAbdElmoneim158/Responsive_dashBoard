import 'package:flutter/material.dart';

import '../../../models/user_info_model.dart';
import '../../../utils/app_images.dart';
import '../../drawer_widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel> items = [
    UserInfoModel(image: Assets.imageFrame1, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imageFrame2, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
    UserInfoModel(image: Assets.imageFrame1, title: "Madrani Andi", subtitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfo: e))).toList(),
      ),
    );
    // SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfo: items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
