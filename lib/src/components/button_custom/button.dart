import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class Button extends StatefulWidget {
  final Widget child;
  final void Function()? onPressed;
  final bool? isLoading;
  const Button(
      {Key? key, required this.child, required this.onPressed, this.isLoading})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: AppColors.primaryAccentColor,
      onTap: widget.onPressed,
      child: Container(
        width: 142,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: widget.child,
      ),
    );
  }
}
