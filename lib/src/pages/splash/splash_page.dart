import 'package:flutter/material.dart';
import 'package:registro_ponto/src/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/utils/extensions/string_ext.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  Future<void> _timeToContinue() async =>
      await Future.delayed(const Duration(seconds: 2));

  @override
  Widget build(BuildContext context) {
    _timeToContinue()
        .then((value) => AppRoutes.loginPage.pushReplacement(context));

    return const Scaffold(
      body: Center(child: Text('Splash Page')),
    );
  }
}
