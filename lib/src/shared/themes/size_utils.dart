import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_factory.dart';

class SizeUtils {
  static final width =
      MediaQuery.of(DialogFactory.navigatorKey.currentState!.context)
          .size
          .width;
  static final height =
      MediaQuery.of(DialogFactory.navigatorKey.currentState!.context)
          .size
          .height;
}
