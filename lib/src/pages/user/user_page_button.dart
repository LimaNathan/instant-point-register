import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/icon_button/custom_icon_button.dart';

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
          (states) => Theme.of(context).colorScheme.primaryContainer,
        ),
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
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              IconButtonC(icon: icon),
            ],
          ),
        ),
      );
}
