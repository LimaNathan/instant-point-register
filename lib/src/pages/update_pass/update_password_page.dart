import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/app_bar/custom_app_bar.dart';
import 'package:registro_ponto/src/pages/update_pass/form_update_pass.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class UpdatePasswordPage extends StatelessWidget {
  const UpdatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          isNavigatedPage: true,
          label: 'Alterar senha',
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text(
                  'Insira sua senha atual'
                  ' e em seguida a nova senha',
                  style: TextStyles.userPageTextStyle),
              30.paddingH,
              Text(
                  'Após confirmada a alteração,'
                  ' um novo login deve ser realizado.',
                  style: TextStyles.bluelightTextStyle),
              40.paddingH,
              const FormUpdatePass(),
            ],
          ),
        ));
  }
}
