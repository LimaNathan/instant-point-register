import 'dart:io';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/components/app_bottom_bar/selected_icon.dart';
import 'package:registro_ponto/src/components/app_bottom_bar/unselected_icon.dart';
import 'package:registro_ponto/src/stores/main_page/main_page_store.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/size_utils.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  MainPageStore store = GetIt.I<MainPageStore>();

  @override
  Widget build(BuildContext context) => Observer(
        builder: (context) {
          var currentPage = store.currentPage;
          if (currentPage == store.currentPage) {}
          return CustomNavigationBar(
            iconSize: 24.0,
            currentIndex: currentPage,
            borderRadius: Platform.isAndroid
                ? const Radius.circular(0)
                : const Radius.circular(12),
            backgroundColor: AppColors.lightPrimaryColor,
            isFloating: Platform.isAndroid ? false : true,
            scaleCurve: Curves.easeInQuad,
            onTap: (int index) async => store.controller
                .animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut)
                .then(
                  (value) => store.updateCurrentPage(index),
                ),
            items: [
              CustomNavigationBarItem(
                selectedIcon: const SelectedIcon(icon: AppIcons.home),
                icon: const UnselectedIcon(icon: AppIcons.home),
              ),
              CustomNavigationBarItem(
                selectedIcon: const SelectedIcon(icon: AppIcons.clock),
                icon: const UnselectedIcon(icon: AppIcons.clock),
              ),
              CustomNavigationBarItem(
                selectedIcon: const SelectedIcon(icon: AppIcons.documenttext),
                icon: const UnselectedIcon(icon: AppIcons.documenttext),
              ),
              CustomNavigationBarItem(icon: (SizeUtils.width * 1 / 10).paddingW)
            ],
          );
        },
      );
}
