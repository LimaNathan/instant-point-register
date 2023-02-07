import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class UserPageButton extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onPressed;
  const UserPageButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        overlayColor: MaterialStateColor.resolveWith(
            (states) => AppColors.primaryAccentColor),
        radius: 12,
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 19.5),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 0.1,
              color: AppColors.primaryColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyles.userPageTextStyle,
              ),
              IconButtonC(icon: icon),
            ],
          ),
        ),
      );
}
