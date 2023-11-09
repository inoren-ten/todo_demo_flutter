import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryRed = Color.fromRGBO(217, 10, 39, 1);
  static const Color primaryBlue = Color.fromRGBO(0, 133, 171, 1);
  static const Color primaryOrange = Color.fromRGBO(238, 123, 52, 1);
  static const Color primaryGreen = Color.fromRGBO(45, 166, 0, 1);
  static const Color primaryGray = Color.fromRGBO(176, 178, 171, 1);
  static const Color primaryLightYellow = Color.fromRGBO(255, 204, 51, 1);
  static const Color primaryBlack = Color.fromRGBO(43, 45, 48, 1);
  static const Color primaryWhite = Color.fromRGBO(255, 255, 255, 1);
  static const Color primaryPaleGray = Color.fromRGBO(183, 183, 182, 1);

  static const Color textColor = Color.fromRGBO(43, 45, 48, 1);

  static const Color paleWhite = Color.fromRGBO(243, 246, 249, 1);
}

ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    // ignore: deprecated_member_use
    backgroundColor: AppColors.paleWhite,
    focusColor: AppColors.primaryBlue,
    textTheme: TextTheme(
        // ignore: deprecated_member_use
        bodyText1: TextStyle(color: AppColors.textColor)));

ThemeData darkTheme = ThemeData(
    primaryColor: AppColors.primaryBlue,
    // ignore: deprecated_member_use
    backgroundColor: AppColors.primaryBlack,
    focusColor: AppColors.primaryBlue,
    textTheme: TextTheme(
        // ignore: deprecated_member_use
        bodyText1: TextStyle(color: AppColors.primaryWhite)));
