import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class Borders {
  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.primaryColor,
      width: 1,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(20),
  );

  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.primaryColor,
      width: 2,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(20),
  );

  static OutlineInputBorder disabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      color: AppColors.primaryColor,
    ),
  );

  static OutlineInputBorder counterBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.darkPrimaryColor,
      width: 1,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(6),
  );
}
