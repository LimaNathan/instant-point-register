import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/button_custom/button.dart';
import 'package:registro_ponto/src/pages/certificate/buttons_row.dart';
import 'package:registro_ponto/src/pages/certificate/pick_date.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({Key? key}) : super(key: key);

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 5),
              child: Column(
                children: [
                  Text('Atestado médico',
                      style: TextStyles.dialogTitleStyle,
                      textAlign: TextAlign.center),
                  Text(
                    'Para inserir um atestado médico,'
                    ' informar o dia inicial, quantidade de dias e'
                    ' em anexo uma foto do documento',
                    style: TextStyles.descriptionLightTextStyle,
                  ),
                ],
              ),
            ),
            const PickDate(),
            13.paddingH,
            const ButtonsRow(),
            35.paddingH,
            Center(
              child: Button(
                color: AppColors.darkPrimaryColor,
                width: 250,
                child: Center(
                  child: Text(
                    'Enviar',
                    style: TextStyles.buttonTextStyle,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
