import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_factory.dart';

extension StringUtils on String {
  ///Metodo para chamar uma pagina nomeada,
  ///basta colocar a string que repesenta a rota
  ///e em seguida chamar 'pushNamed'

  Future<Object?> pushNamed() => Navigator.pushNamed(
        DialogFactory.navigatorKey.currentState!.context,
        this,
      );
  Future<Object?> popAndPushNamed() => Navigator.popAndPushNamed(
        DialogFactory.navigatorKey.currentState!.context,
        this,
      );

  Future<Object?> pushReplacement() => Navigator.pushReplacementNamed(
        DialogFactory.navigatorKey.currentState!.context,
        this,
      );

  int get toInteger => int.parse(this);
}
