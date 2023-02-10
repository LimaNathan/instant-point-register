import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:registro_ponto/src/pages/user/user_info_card_item.dart';
import 'package:registro_ponto/src/pages/user/user_page_button.dart';
import 'package:registro_ponto/src/pages/user/user_pic_card.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/widgets/custom_dialogs/custom_dialogs.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      const UserInfoCardItem(
        label: 'Empresa',
        icon: Iconsax.buildings_2,
      ),
      const UserInfoCardItem(
        label: 'Identificação',
        icon: Iconsax.card,
      ),
      const UserInfoCardItem(
        label: 'Cargo',
        icon: Iconsax.briefcase,
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Detalhes do usuário',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              30.paddingH,
              const UserPicCard(),
              20.paddingH,
              Text(
                'Nathan de Aguiar',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              20.paddingH,
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 0.1,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                child: ListView.separated(
                  itemCount: children.length,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  separatorBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(height: 1),
                  ),
                  itemBuilder: (context, index) => children[index],
                  shrinkWrap: true,
                ),
              ),
              50.paddingH,
              UserPageButton(
                label: 'Alterar senha',
                icon: Iconsax.refresh,
                onPressed: () => AppRoutes.updatePassPage.pushNamed(),
              ),
              10.paddingH,
              UserPageButton(
                label: 'Sair',
                icon: Iconsax.logout,
                onPressed: () async => CustomDialogs.logout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
