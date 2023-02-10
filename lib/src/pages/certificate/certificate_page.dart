import 'package:flutter/material.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/widgets/button_custom/button.dart';

import 'widgets/buttons_row.dart';
import 'widgets/pick_date.dart';

class CertificatePage extends StatefulWidget {
  const CertificatePage({Key? key}) : super(key: key);

  @override
  State<CertificatePage> createState() => _CertificatePageState();
}

class _CertificatePageState extends State<CertificatePage> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 5),
              child: Column(
                children: [
                  Text(
                    'Atestado médico',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Para inserir um atestado médico,'
                    ' informar o dia inicial, quantidade de dias e'
                    ' em anexo uma foto do documento',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
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
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                width: 250,
                child: Center(
                  child: Text(
                    'Enviar',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
}
