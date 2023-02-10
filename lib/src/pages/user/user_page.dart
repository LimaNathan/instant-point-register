import 'package:flutter/material.dart';
import 'package:registro_ponto/src/pages/user/user_info_card.dart';
import 'package:registro_ponto/src/pages/user/user_page_button.dart';
import 'package:registro_ponto/src/pages/user/user_pic_card.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/widgets/custom_dialogs/custom_dialogs.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: const Text('Detalhes do usuário'),
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
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                20.paddingH,
                const UserInfoCard(),
                50.paddingH,
                UserPageButton(
                  label: 'Alterar senha',
                  icon: AppIcons.refreshsquare,
                  onPressed: () => AppRoutes.updatePassPage.pushNamed(),
                ),
                10.paddingH,
                UserPageButton(
                  label: 'Sair',
                  icon: AppIcons.logoutcurve,
                  onPressed: () async => CustomDialogs.logout(),
                ),
              ],
            ),
          ),
        ),
      );
}
