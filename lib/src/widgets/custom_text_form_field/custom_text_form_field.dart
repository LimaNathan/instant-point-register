import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
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
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          onChanged: onChanged,
          inputFormatters: formatters,
          obscureText: canShowText ?? false,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.primary),
          decoration: InputDecoration(
            enabled: enabled,
            suffixIcon: icon,
            labelText: label,
          ),
        ),
      );
}
