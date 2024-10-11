import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1300;
  static const double tablet = 800;
  static late double width, hight;

  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    hight = MediaQuery.sizeOf(context).height;
  }
}
