
import 'package:flutter/material.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_factory.dart';

part of 'theme.dart';
   OutlineInputBorder get _enabledBorder => OutlineInputBorder(
        borderSide: BorderSide(
          color: _lightColorScheme.primaryContainer,
        ),
        borderRadius: BorderRadius.circular(20),
      );

  OutlineInputBorder get _focusedBorder => OutlineInputBorder(
        borderSide:  BorderSide(
          color: _lightColorScheme.primaryContainer,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      );

   OutlineInputBorder get _disabledBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide:  BorderSide(
          color: _lightColorScheme.primaryContainer,
        ),
      );

   OutlineInputBorder get _counterBorder => OutlineInputBorder(
        borderSide:  BorderSide(
          color: _lightColorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(6),
      );

