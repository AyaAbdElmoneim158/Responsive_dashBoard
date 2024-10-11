import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(fontSize: 14, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(fontSize: 12, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(fontSize: 18, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(fontSize: 24, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = scaleFactor * fontSize;

  double lower = fontSize * 0.8;
  double upper = fontSize * 1.2;

  return responsiveSize.clamp(lower, upper);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalwidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalwidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}

// abstract class AppStyles {
//   static TextStyle regular16 = TextStyle(
//     color: const Color(0xff064061),
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle regular14 = TextStyle(
//     color: const Color(0xffAAAAAA),
//     fontSize: getResponsiveFontSize(fontSize: 14),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle regular12 = TextStyle(
//     color: const Color(0xffAAAAAA),
//     fontSize: getResponsiveFontSize(fontSize: 12),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static TextStyle medium16 = TextStyle(
//     color: const Color(0xff064061),
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle medium20 = TextStyle(
//     color: const Color(0xffFFFFFF),
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );

//   static TextStyle semiBold16 = TextStyle(
//     color: const Color(0xff064061),
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle semiBold18 = TextStyle(
//     color: const Color(0xff4EB7F2),
//     fontSize: getResponsiveFontSize(fontSize: 18),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle semiBold20 = TextStyle(
//     color: const Color(0xff064061),
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle semiBold24 = TextStyle(
//     color: const Color(0xff4EB7F2),
//     fontSize: getResponsiveFontSize(fontSize: 24),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static TextStyle bold16 = TextStyle(
//     color: const Color(0xff4EB7F2),
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w700,
//   );
// }
