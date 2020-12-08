import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants/colors.dart';

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

TextTheme _buildTextTheme(BuildContext context) {
  var textTheme = Theme.of(context).textTheme;

  return GoogleFonts.poppinsTextTheme(textTheme).copyWith(
    display1: GoogleFonts.josefinSans(
      fontSize: 36,
      color: AppColors.bodyText,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    headline: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.bodyText,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
    subhead: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.bodyText,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    title: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.bodyText,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    body1: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.bodyText,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    ),
    button: GoogleFonts.poppins(
        fontSize: 14,
        color: AppColors.bodyText,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold),
    subtitle: GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.bodyText,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    ),
  );
}

ThemeData buildLightTheme(BuildContext context) {
  const Color primaryColor = Colors.white;
  const Color secondaryColor = AppColors.primaryColor;
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
    brightness: Brightness.light,
//    primarySwatch: white,
    primaryColorBrightness: Brightness.light,
    accentColorBrightness: Brightness.light,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    buttonColor: AppColors.primaryColor,
    indicatorColor: Colors.white,
    toggleableActiveColor: AppColors.primaryColor,
    splashColor: Colors.white24,
    splashFactory: InkRipple.splashFactory,
    accentColor: secondaryColor,
    canvasColor: Colors.white,
    timePickerTheme: TimePickerThemeData(backgroundColor: Colors.blueGrey),
    bottomAppBarColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: AppColors.negativeColor,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
      },
    ),
    iconTheme: IconThemeData(color: AppColors.inactiveHeading),
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 4,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
      buttonColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
  return base.copyWith(
    textTheme: _buildTextTheme(context),
    primaryTextTheme: _buildTextTheme(context),
    accentTextTheme: _buildTextTheme(context),
  );
}

//ThemeData _buildDarkTheme() {
//  const Color primaryColor = Color(0xFF0175c2);
//  const Color secondaryColor = Color(0xFF13B9FD);
//  final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
//    primary: primaryColor,
//    secondary: secondaryColor,
//  );
//  final ThemeData base = ThemeData(
//    brightness: Brightness.dark,
//    accentColorBrightness: Brightness.dark,
//    primaryColor: primaryColor,
//    primaryColorDark: const Color(0xFF0050a0),
//    primaryColorLight: secondaryColor,
//    buttonColor: primaryColor,
//    indicatorColor: Colors.white,
//    toggleableActiveColor: const Color(0xFF6997DF),
//    accentColor: secondaryColor,
//    canvasColor: const Color(0xFF202124),
//    scaffoldBackgroundColor: const Color(0xFF202124),
//    backgroundColor: const Color(0xFF202124),
//    errorColor: const Color(0xFFB00020),
//    buttonTheme: ButtonThemeData(
//      colorScheme: colorScheme,
//      textTheme: ButtonTextTheme.primary,
//    ),
//  );
//  return base.copyWith(
//    textTheme: _buildTextTheme(base.textTheme),
//    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
//    accentTextTheme: _buildTextTheme(base.accentTextTheme),
//  );
//}
