import 'package:flutter/material.dart';
import 'package:hamrogadgets/Constants/colors.dart';

class Borders {
  static const BorderSide mainButtonBorder = BorderSide(
    color: AppColors.primaryColor,
    width: 2,
    style: BorderStyle.solid,
  );
  static const BorderSide secondaryButtonBorder = BorderSide(
    color: AppColors.inactiveHeading,
    width: 2,
    style: BorderStyle.solid,
  );
  static const BorderSide smallButtonBorder = BorderSide(
    color: AppColors.secondaryText,
    width: 2,
    style: BorderStyle.solid,
  );
}
