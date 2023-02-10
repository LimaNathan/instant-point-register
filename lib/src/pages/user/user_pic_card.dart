import 'package:flutter/material.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_icons.dart';

import 'package:registro_ponto/src/widgets/icon_button/custom_icon_button.dart';

class UserPicCard extends StatelessWidget {
  const UserPicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.outline,
          ),
          width: 162,
          height: 162,
          child: const Center(
            child: IconButtonC(
              icon: AppIcons.user,
              size: 64,
            ),
          ),
        ),
      );
}
