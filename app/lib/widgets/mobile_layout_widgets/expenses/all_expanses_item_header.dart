import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({
    super.key,
    required this.image,
    required this.isActive,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isActive ? const Color(0xff5FBEF3) : const Color(0xffFAFAFA),
            child: SvgPicture.asset(
              image,
              color: isActive ? const Color(0xffFFFFFF) : const Color(0xff4EB7F2),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive ? const Color(0xffFFFFFF) : const Color(0xff064061),
        ),
      ],
    );
  }
}
