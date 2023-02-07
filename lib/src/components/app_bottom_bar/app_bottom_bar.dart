import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_ponto/src/components/custom_dialogs/custom_dialogs.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      decoration: BoxDecoration(gradient: AppColors.linearGradient),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButtonC(
              color: Colors.white,
              icon: AppIcons.home,
              onPressed: () => store.controller.animateToPage(0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut)),
          IconButtonC(
            color: Colors.white,
            icon: AppIcons.documenttext,
            onPressed: () async => await CustomDialogs.certificateDialog(),
          ),
          IconButtonC(
              color: Colors.white,
              icon: AppIcons.clock,
              onPressed: () => store.controller.animateToPage(1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut)),
          (SizeUtils.width * 1 / 10).paddingW,
        ],
      ),
    );
  }
}
