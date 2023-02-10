import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_actions.dart';
import 'package:registro_ponto/src/widgets/dialog/idialog.dart';

class AndroidDialog implements IDialog {
  @override
  Widget create(BuildContext context, Widget title, Widget content,
      List<DialogAction> actions,) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions.map((a) {
        return TextButton(
          child: a.child,
          onPressed: a.onPressed,
        );
      }).toList(),
    );
  }
}
