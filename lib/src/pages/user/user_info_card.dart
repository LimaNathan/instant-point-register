import 'package:flutter/material.dart';
import 'package:registro_ponto/src/pages/user/user_info_card_item.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_icons.dart';
class UserInfoCard extends StatelessWidget {
  const UserInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 0.1,
            color:Theme.of(context).colorScheme.primaryContainer,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            UserInfoCardItem(label: 'Empresa', icon: AppIcons.enterprise),
            Divider(height: 1),
            UserInfoCardItem(label: 'Identificação', icon: AppIcons.docId),
            Divider(height: 1),
            UserInfoCardItem(label: 'Cargo', icon: AppIcons.briefCase),
          ],
        ),
      );
}
