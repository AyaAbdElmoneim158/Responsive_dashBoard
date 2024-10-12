import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class QuickInvoiceButton extends StatelessWidget {
  const QuickInvoiceButton({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? const Color(0xff4EB7F2),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 20),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.semiBold18(context)
              .copyWith(color: textColor ?? const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
