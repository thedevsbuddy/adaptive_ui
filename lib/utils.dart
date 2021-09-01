import 'package:flutter/material.dart';

class AdaptiveUI {
  late MediaQueryData _mediaQueryData;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation? orientation;
  static double designHeight = 812;
  static double designWidth = 375;

  void init(
      {required BuildContext context,
      required double height,
      required double width}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    designHeight = height;
    designWidth = width;
  }

  // Get the proportionate height as per screen size
  static double h(dynamic height) {
    double screenHeight = AdaptiveUI.screenHeight;

    return (height / screenHeight) * screenHeight;
  }

  // Get the proportionate width as per screen size
  static double w(dynamic width) {
    double screenWidth = AdaptiveUI.screenWidth;

    return (width / designWidth) * screenWidth;
  }

  // Get the proportionate font size as per screen size
  static double sp(dynamic sp) {
    double screenWidth = AdaptiveUI.screenWidth;

    return (sp / designWidth) * screenWidth;
  }
}
