import 'package:flutter/material.dart';

import '../../../models/all_Expanses_items_model.dart';
import '../../../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpansesItemBody extends StatefulWidget {
  const AllExpansesItemBody({
    super.key,
  });

  @override
  State<AllExpansesItemBody> createState() => _AllExpansesItemBodyState();
}

class _AllExpansesItemBodyState extends State<AllExpansesItemBody> {
  static List<AllExpansesItemsModel> items = [
    AllExpansesItemsModel(
      image: Assets.imageBalance,
      title: "Balance",
      date: "April 2024",
      price: r"$20,129",
    ),
    AllExpansesItemsModel(
      image: Assets.imageIncome,
      title: "Income",
      date: "june 2016",
      price: r"$20,000",
    ),
    AllExpansesItemsModel(
      image: Assets.imageExpenses,
      title: "Expenses",
      date: "june 2024",
      price: r"$38,000",
    )
  ];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelected != 0) {
                setState(() {
                  isSelected = 0;
                });
              }
            },
            child: AllExpansesItem(
              isActive: isSelected == 0,
              expansesItemsModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelected != 1) {
                setState(() {
                  isSelected = 1;
                });
              }
            },
            child: AllExpansesItem(
              isActive: isSelected == 1,
              expansesItemsModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelected != 2) {
                setState(() {
                  isSelected = 2;
                });
              }
            },
            child: AllExpansesItem(
              isActive: isSelected == 2,
              expansesItemsModel: items[2],
            ),
          ),
        ),
      ],
    );
    // return Row(
    //     children: AllExpansesItemBody.items.asMap().entries.map(
    //   (e) {
    //     int index = e.key;
    //     var value = e.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 20 : 0),
    //         child: GestureDetector(
    //           onTap: () {
    //             if (isSelected != index) {
    //               setState(() {
    //                 isSelected = index;
    //               });
    //             }
    //           },
    //           child: AllExpansesItem(
    //             isActive: isSelected == index,
    //             expansesItemsModel: value,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList());
  }
}
