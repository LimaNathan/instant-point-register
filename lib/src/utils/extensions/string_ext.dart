import 'package:flutter/material.dart';

extension StringUtils on String {


  ///Metodo para chamar uma pagina nomeada, basta colocar a string que repesenta a rota
  ///e em seguida chamar 'pushNamed'

  pushNamed(BuildContext context) => Navigator.pushNamed(context, this);

  pushReplacement(BuildContext context) =>
      Navigator.pushReplacementNamed(context, this);

  int get toInteger => int.parse(this);
}
