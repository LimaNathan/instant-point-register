import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_ponto/src/components/date_picker/date_picker_button.dart';
import 'package:registro_ponto/src/components/dialog/dialog_actions.dart';
import 'package:registro_ponto/src/components/dialog/dialog_factory.dart';
import 'package:registro_ponto/src/utils/theme/borders.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class CustomDialogs {
  static Future<dynamic> exitDialog() async =>
      await DialogFactory.showAlertDialog(
        title: const Text('Sair'),
        content: const Text('Tem certeza que deseja sair?'),
        actions: [
          DialogAction(
            child: const Text('Não'),
            onPressed: () =>
                Navigator.pop(DialogFactory.navigatorKey.currentState!.context),
          ),
          DialogAction(
            child: const Text('Sim'),
            onPressed: () => exit(0),
          ),
        ],
      );

  static Future<void> locationServiceRequiredDialog() async =>
      await DialogFactory.showAlertDialog(
        title: const Text('Aviso'),
        content: const Text(
          'Não será possível registrar o ponto sem que a localização esteja ativada',
        ),
      );

  static Future<void> certificateDialog() async =>
      await DialogFactory.showAlertDialog(
        forceAndroid: true,
        title: Text(
          'Atestado médico',
          style: TextStyles.dialogTitleStyle,
          textAlign: TextAlign.center,
        ),
        content: Column(
          children: [
            Text(
              'Para inserir um atestado médico,'
              ' informar o dia inicial, quantidade de dias e'
              ' em anexo uma foto do documento',
              style: TextStyles.descriptionLightTextStyle,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      height: 60,
                      child: const DatePickerButton()),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      height: 50,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        style: TextStyles.descriptionLightTextStyle,
                        maxLines: 1,
                        maxLength: 2,
                        buildCounter: (context,
                                {currentLength = 2,
                                isFocused = false,
                                maxLength}) =>
                            null,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          focusedBorder: Borders.counterBorder,
                          label: Text('Qtd.',
                              style: TextStyles.descriptionLightTextStyle),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    )),
              ],
            )
            // DatePickerDialog(
            //   initialDate: DateTime.now(),
            //   firstDate: DateTime(2023),
            //   lastDate: DateTime.now(),
            // ),
          ],
        ),
      );
}
