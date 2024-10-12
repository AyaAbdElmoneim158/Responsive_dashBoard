import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileCustomLayout,
    required this.tabletCustomLayout,
    required this.desktopCustomLayout,
  });
  final WidgetBuilder mobileCustomLayout;
  final WidgetBuilder tabletCustomLayout;
  final WidgetBuilder desktopCustomLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileCustomLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletCustomLayout(context);
        } else {
          return desktopCustomLayout(context);
        }
      },
    );
  }
}
