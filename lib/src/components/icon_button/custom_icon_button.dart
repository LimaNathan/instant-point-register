// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:registro_ponto/src/components/lazy_loading/lazy_loading_widget.dart';

class IconButtonC extends StatefulWidget {
  final String icon;
  final void Function()? onPressed;
  final Color? color;
  const IconButtonC({
    super.key,
    required this.icon,
    this.onPressed,
    this.color,
  });

  @override
  State<IconButtonC> createState() => _IconButtonCState();
}

class _IconButtonCState extends State<IconButtonC> {
  @override
  Widget build(BuildContext context) => InkWell(
        onTap: widget.onPressed,
        child: SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            placeholderBuilder: (context) => const LazyLoading(),
            widget.icon,
            color: widget.color,
          ),
        ),
      );
}
