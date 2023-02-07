import 'package:flutter/material.dart';

extension StringUtils on String {
  pushNamed(BuildContext context) => Navigator.pushNamed(context, this);

  pushReplacement(BuildContext context) =>
      Navigator.pushReplacementNamed(context, this);

  int get toInteger => int.parse(this);
}
