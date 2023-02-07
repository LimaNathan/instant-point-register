import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/components/app_bar/custom_app_bar.dart';
import 'package:registro_ponto/src/components/app_bottom_bar/app_bottom_bar.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
import 'package:registro_ponto/src/pages/certificate/certificate_page.dart';
import 'package:registro_ponto/src/pages/historic_page/historic_page.dart';
import 'package:registro_ponto/src/pages/home/home_page.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPageStore store = GetIt.I<MainPageStore>();

    return Scaffold(
      appBar: CustomAppBar(),
      body: Observer(
          builder: (_) => PageView(
                controller: store.controller,
                onPageChanged: (value) => store.updateCurrentPage(value),
                children: const [
                  HomePage(),
                  CertificatePage(),
                  HistoricPage(),
                ],
              )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Colors.white, width: 8)),
          width: 95,
          height: 95,
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              child: const IconButtonC(
                icon: AppIcons.camera,
                color: Colors.white,
              ))),
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}
