import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/dialog/dialog_factory.dart';

extension StringUtils on String {
  ///Metodo para chamar uma pagina nomeada, basta colocar a string que repesenta a rota
  ///e em seguida chamar 'pushNamed'

  pushNamed() => Navigator.pushNamed(
      DialogFactory.navigatorKey.currentState!.context, this);

  pushReplacement() => Navigator.pushReplacementNamed(
      DialogFactory.navigatorKey.currentState!.context, this);

  int get toInteger => int.parse(this);
}
