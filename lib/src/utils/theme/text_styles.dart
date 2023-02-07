import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class TextStyles {
  static TextStyle formTextStyle = GoogleFonts.inter(
    color: AppColors.lightPrimaryColor,
  );

  static TextStyle buttonTextStyle = GoogleFonts.inter(
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle appBarTitleStyle = GoogleFonts.inter(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle lightTextStyle = GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white);

  static TextStyle mediumTextStyle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.darkPrimaryColor,
  );
  static TextStyle mediumBrightStyle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryAccentColor,
  );
  static TextStyle descriptionTextStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.primaryAccentColor,
  );

  static TextStyle dialogItemTextStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.darkPrimaryColor,
  );
  static TextStyle descriptionLightTextStyle = GoogleFonts.inter(
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: AppColors.darkPrimaryColor,
  );

  static TextStyle dialogTitleStyle = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.darkPrimaryColor,
  );
}
