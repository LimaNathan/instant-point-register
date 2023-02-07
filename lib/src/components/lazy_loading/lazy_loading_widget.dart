import 'dart:async';

import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class LazyLoading extends StatefulWidget {
  const LazyLoading({super.key});

  @override
  State<LazyLoading> createState() => _LazyLoadingState();
}

class _LazyLoadingState extends State<LazyLoading> {
  static const Duration interval = Duration(seconds: 2);
  late Timer timer;
  int counter = 0;

  List<Color> get colors => [
        AppColors.blueGrey.withAlpha(150),
        AppColors.shadowPrimaryColor.withAlpha(150),
      ]..shuffle();

  List<Alignment> get positions => [
        Alignment.centerLeft,
        Alignment.centerRight,
      ];

  _startAnimation() {
    WidgetsBinding.instance
        .addPostFrameCallback((timeStamp) => setState(() => counter++));
    timer =
        Timer.periodic(interval, (Timer timer) => setState(() => counter++));
  }

  @override
  void initState() {
    _startAnimation();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) => AnimatedContainer(
      duration: const Duration(seconds: 1),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: positions[counter % positions.length],
        end: positions[(counter + 1) % positions.length],
        colors: colors,
        tileMode: TileMode.clamp,
      )));
}
