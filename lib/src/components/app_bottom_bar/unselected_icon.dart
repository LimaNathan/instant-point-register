import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class UnselectedIcon extends StatelessWidget {
  final String icon;
  const UnselectedIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      IconButtonC(icon: icon, color: AppColors.shadowPrimaryColor);
}
