import 'package:flutter/material.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/widgets/icon_button/custom_icon_button.dart';

class UserInfoCardItem extends StatelessWidget {
  final String icon;
  final String label;
  const UserInfoCardItem({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 19.5,
      ),
      child: Row(
        children: [
          IconButtonC(icon: icon),
          13.paddingW,
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
