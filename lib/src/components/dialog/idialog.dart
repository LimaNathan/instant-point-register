import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/dialog/dialog_actions.dart';

abstract class IDialog {
  Widget create(BuildContext context, Widget title, Widget content,
      List<DialogAction> actions);
}
