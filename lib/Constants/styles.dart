import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

const String FontFamily = 'Poppins';
const double navBarItemsTextSize = 14;

class Styles {
  static const TextStyle navBarHeadingText = TextStyle(
    color: AppColors.activeHeading,
    fontFamily: FontFamily,
    fontWeight: FontWeight.w700,
    fontSize: navBarItemsTextSize,
  );
  static const TextStyle HeadingText = TextStyle(
    color: AppColors.activeHeading,
    fontFamily: FontFamily,
    fontWeight: FontWeight.w700,
    fontSize: navBarItemsTextSize,
  );
  static TextStyle headingTextWithSecondaryColor(
      {Color color = AppColors.inactiveHeading,
      FontWeight fontWeight = FontWeight.w700,
      double fontSize = navBarItemsTextSize}) {
    return TextStyle(
      color: color,
      fontFamily: FontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
  }

  static TextStyle customTextStyle({
    Color color = AppColors.inactiveHeading,
    String fontFamily = FontFamily,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = navBarItemsTextSize,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );
  }
}
