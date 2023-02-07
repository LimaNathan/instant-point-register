import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_ponto/src/utils/theme/borders.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final bool? canShowText;
  final Widget? icon;
  final List<TextInputFormatter>? formatters;
  final Function(String)? onChanged;
  final bool enabled;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.canShowText = false,
    this.icon,
    this.formatters,
    this.onChanged,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  // TODO: TRANSFORMAR ESSE E OUTROS WIDGETS PADRÃO EM UM PACKAGE PARA FACILITAR IMPLEMENTAÇÃO
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          onChanged: widget.onChanged,
          inputFormatters: widget.formatters,
          obscureText: widget.canShowText ?? true,
          cursorColor: Colors.blue,
          style: TextStyles.formTextStyle,
          decoration: InputDecoration(
            enabled: widget.enabled,
            contentPadding: const EdgeInsets.symmetric(horizontal: 28),
            suffix: widget.icon,
            counterText: '',
            counter: null,
            labelText: widget.label,
            labelStyle: TextStyles.formTextStyle,
            enabledBorder: Borders.enabledBorder,
            focusedBorder: Borders.focusedBorder,
            disabledBorder: Borders.disabledBorder,
            suffixIconConstraints: const BoxConstraints(
              maxHeight: 24,
              maxWidth: 24,
              minHeight: 16,
              minWidth: 16,
            ),
          ),
        ),
      );
}
