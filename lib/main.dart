import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/app_widget.dart';
import 'package:registro_ponto/src/stores/location/location_store.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';

void main() {
  GetIt.instance.registerSingleton(LocationStore());
  GetIt.instance.registerSingleton(MainPageStore());
  runApp(const MyApp());
}
