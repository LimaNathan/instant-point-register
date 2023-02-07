import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0XFF0A78DC);
  static const Color primaryAccentColor = Color(0XFF218AE9);
  static const Color darkPrimaryColor = Color(0XFF00519B);
  static const Color lightPrimaryColor = Color(0XFF489AE4);
  static const Color shadowPrimaryColor = Color(0xFFBDD4E9);
  static const Color blueGrey = Color(0xffA1B7CB);
  static const Color shadowAccentColor = Color(0xff8EC9FE);
  static LinearGradient linearGradient = LinearGradient(
    end: Alignment.centerRight,
    colors: [
      AppColors.lightPrimaryColor.withAlpha(190),
      AppColors.lightPrimaryColor,
    ],
  );
}
