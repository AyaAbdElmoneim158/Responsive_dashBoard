import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hent});
  final String hent;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            hintText: "Type customer name",
            hintStyle: AppStyles.regular16(context).copyWith(
              color: const Color(0xffAAAAAA),
            ),
            filled: true,
            fillColor: const Color(0xffFAFAFA),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide.none,
            ),
          ),
        )
      ],
    );
  }
}
