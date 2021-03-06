import 'dart:ui';

import 'package:flutter/material.dart';

import 'colors.dart';

const String FontFamily = 'Poppins';
const double navBarItemsTextSize = 14;
const double productNameTextSize = 13;

class Styles {
  static const TextStyle navBarHeadingText = TextStyle(
    color: AppColors.activeHeading,
    fontFamily: FontFamily,
    fontWeight: FontWeight.w700,
    fontSize: navBarItemsTextSize,
  );
  static const TextStyle productCardName = TextStyle(
    color: AppColors.activeHeading,
    fontFamily: FontFamily,
    // fontWeight: FontWeight.w700,

    fontSize: productNameTextSize,
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
    TextDecoration textDecoration,
  }) {
    return TextStyle(
      decoration: textDecoration,
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );
  }
}
