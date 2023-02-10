import 'dart:io';

import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/android_dialog.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_actions.dart';
import 'package:registro_ponto/src/widgets/dialog/idialog.dart';
import 'package:registro_ponto/src/widgets/dialog/ios_dialog.dart';

class DialogFactory {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Future showAlertDialog<T>({
    Widget? title,
    Widget? content,
    List<DialogAction>? actions,
    bool forceAndroid = false,
    bool forceIos = false,
  }) {
    IDialog dialogData;

    if ((Platform.isIOS || forceIos) && !forceAndroid) {
      dialogData = IosDialog();
    } else if ((Platform.isAndroid || forceAndroid) && !forceIos) {
      dialogData = AndroidDialog();
    } else {
      dialogData = AndroidDialog();
    }

    return showDialog(
      context: navigatorKey.currentState!.overlay!.context,
      builder: (context) => dialogData.create(
        context,
        title ?? const Text('Não informado'),
        content ?? const Text('Não informado'),
        actions ?? [],
      ),
    );
  }
}
