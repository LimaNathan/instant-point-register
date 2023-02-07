import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';

class SelectedIcon extends StatelessWidget {
  final String icon;
  const SelectedIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButtonC(
        icon: icon,
        color: Colors.white,
      );
}
