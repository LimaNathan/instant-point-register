import 'package:flutter/material.dart';
import 'package:registro_ponto/src/pages/certificate/certificate_page.dart';
import 'package:registro_ponto/src/pages/home/home_page.dart';
import 'package:registro_ponto/src/pages/login/login_page.dart';
import 'package:registro_ponto/src/pages/main/main_page.dart';
import 'package:registro_ponto/src/pages/splash/splash_page.dart';
import 'package:registro_ponto/src/pages/update_pass/update_password_page.dart';
import 'package:registro_ponto/src/pages/user/user_page.dart';
import 'package:registro_ponto/src/shared/themes/custom_theme.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/widgets/dialog/dialog_factory.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registro de ponto',
      theme: lightTheme,
      darkTheme: darkTheme,
    
      navigatorKey: DialogFactory.navigatorKey,
      initialRoute: AppRoutes.splashPage,
      routes: {
        AppRoutes.mainPage: (_) => const MainPage(),
        AppRoutes.splashPage: (_) => const SplashPage(),
        AppRoutes.homePage: (_) => const HomePage(),
        AppRoutes.loginPage: (_) => const LoginPage(),
        AppRoutes.certificatePage: (_) => const CertificatePage(),
        AppRoutes.userPage: (_) => const UserPage(),
        AppRoutes.updatePassPage: (_) => const UpdatePasswordPage(),
      },
    );
  }
}
