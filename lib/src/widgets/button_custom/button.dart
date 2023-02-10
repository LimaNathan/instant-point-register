import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Widget child;
  final void Function()? onPressed;
  final bool? isLoading;
  final EdgeInsets? padding;
  final Color? color;
  final double? width;
  const Button({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isLoading,
    this.padding,
    this.color,
    this.width,
  }) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Theme.of(context).colorScheme.primary,
        onTap: widget.onPressed,
        child: Container(
          width: widget.width ?? 142,
          decoration: BoxDecoration(
            color: widget.color ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: widget.padding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: widget.child,
        ),
      );
}
