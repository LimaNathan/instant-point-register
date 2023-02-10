import 'package:flutter/material.dart';

extension PaddindExt on num {
  SizedBox get paddingH => SizedBox(
        height: toDouble(),
      );

  SizedBox get paddingW => SizedBox(
        width: toDouble(),
      );

  
}
