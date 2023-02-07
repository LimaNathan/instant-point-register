import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/app/app_widget.dart';
import 'package:registro_ponto/src/stores/location/location_store.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

void main() {
  final instance = GetIt.instance;
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryAccentColor,
    systemNavigationBarColor: AppColors.primaryAccentColor,
    statusBarBrightness: Brightness.light,
  ));

  instance.registerSingleton(LocationStore());
  instance.registerSingleton(MainPageStore());
  runApp(const MyApp());
}
