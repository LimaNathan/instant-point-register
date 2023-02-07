import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/app/app_widget.dart';
import 'package:registro_ponto/src/stores/location/location_store.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';

void main() {
  final instance = GetIt.instance;
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.blue));

  instance.registerSingleton(LocationStore());
  instance.registerSingleton(MainPageStore());
  runApp(const MyApp());
}