import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff4EB7F2),
      elevation: 20,
      title: Text(
        "Responsive Dashboard",
        style: AppStyles.semiBold20(context).copyWith(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
