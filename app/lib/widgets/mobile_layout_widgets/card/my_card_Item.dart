import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_images.dart';
import '../../../utils/app_styles.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
          image: DecorationImage(
              image: AssetImage(Assets.imageCardBackImage), fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31, right: 42),
              title: Text(
                "Name card",
                style: AppStyles.regular16(context)
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.medium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imageGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.semiBold24(context)
                        .copyWith(color: const Color(0xffFFFFFF)),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.regular16(context)
                        .copyWith(color: const Color(0xffFFFFFF)),
                  ),
                  const SizedBox(height: 24)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
