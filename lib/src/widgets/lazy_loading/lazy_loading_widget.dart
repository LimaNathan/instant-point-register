import 'dart:async';

import 'package:flutter/material.dart';

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
        Theme.of(context).colorScheme.outline,
        Theme.of(context).colorScheme.surfaceVariant
      ]..shuffle();

  List<Alignment> get positions => [
        Alignment.centerLeft,
        Alignment.centerRight,
      ];

  void _startAnimation() {
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
          ),
        ),
      );
}
