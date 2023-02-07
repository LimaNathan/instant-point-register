import 'package:flutter/material.dart';
import 'package:registro_ponto/src/components/dialog/dialog_factory.dart';
import 'package:registro_ponto/src/pages/certificate/certificate_page.dart';
import 'package:registro_ponto/src/pages/home/home_page.dart';
import 'package:registro_ponto/src/pages/login/login_page.dart';
import 'package:registro_ponto/src/pages/main/main_page.dart';
import 'package:registro_ponto/src/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/pages/splash/splash_page.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro de ponto',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
      ),
      navigatorKey: DialogFactory.navigatorKey,
      initialRoute: AppRoutes.splashPage,
      routes: {
        AppRoutes.mainPage: (_) => const MainPage(),
        AppRoutes.splashPage: (_) => const SplashPage(),
        AppRoutes.homePage: (_) => const HomePage(),
        AppRoutes.loginPage: (_) => const LoginPage(),
        AppRoutes.certificatePage: (_) => const CertificatePage(),
      },
    );
  }
}
