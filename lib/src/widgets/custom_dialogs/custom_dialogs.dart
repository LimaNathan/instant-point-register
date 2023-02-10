import 'dart:io';

import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_actions.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_factory.dart';

class CustomDialogs {
  static Future<dynamic> exitDialog() async => DialogFactory.showAlertDialog(
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
      DialogFactory.showAlertDialog(
        title: const Text('Aviso'),
        content: const Text(
          'Não será possível registrar'
          ' o ponto sem que a localização esteja ativada',
        ),
      );

  static Future<void> logout() async => DialogFactory.showAlertDialog(
        title: const Text('Sair'),
        content: const Text('Deseja encerrar sua sessão?'),
        actions: [
          DialogAction(child: const Text('Não'), onPressed: () {}),
          DialogAction(child: const Text('Sim'), onPressed: () {}),
        ],
      );
}
