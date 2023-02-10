import 'package:flutter/material.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  Future<void> _timeToContinue() async =>
      Future.delayed(const Duration(seconds: 2));

  @override
  Widget build(BuildContext context) {
    _timeToContinue()
        .then((value) => AppRoutes.loginPage.pushReplacement());

    return const Scaffold(
      body: Center(child: Text('Splash Page')),
    );
  }
}
