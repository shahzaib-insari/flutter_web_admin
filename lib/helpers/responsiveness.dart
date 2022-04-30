import 'package:flutter/material.dart';
import 'package:get/get.dart';

const int largeScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  // final Widget customScreen;
  const ResponsiveWidget(
      {Key? key, this.largeScreen, this.mediumScreen, this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return Get.size.width < mediumScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return Get.size.width >= mediumScreenSize &&
        Get.size.width < largeScreenSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return Get.size.width > largeScreenSize;
  }

  static bool isCustomSize(BuildContext context) {
    return Get.size.width <= customScreenSize &&
        Get.size.width >= mediumScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= largeScreenSize) {
          return largeScreen!;
        } else if (constraints.maxWidth < largeScreenSize &&
            constraints.maxWidth >= mediumScreenSize) {
          return mediumScreen ?? largeScreen!;
        } else {
          return smallScreen ?? largeScreen!;
        }
      },
    );
  }
}
