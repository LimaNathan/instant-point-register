import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro_ponto/src/components/dialog/dialog_factory.dart';
import 'package:registro_ponto/src/components/icon_button/custom_icon_button.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';
import 'package:registro_ponto/src/utils/theme/text_styles.dart';

class CustomAppBar extends PreferredSize {
  final bool isNavigatedPage;
  final String? label;

  CustomAppBar({
    this.isNavigatedPage = false,
    this.label,
    Key? key,
  })  : assert((isNavigatedPage == true) ? label != null : label == null),
        super(
          key: key,
          child: SafeArea(
            child: Container(
              height: 90,
              decoration: BoxDecoration(gradient: AppColors.linearGradient),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  children: isNavigatedPage
                      ? [
                          IconButtonC(
                            icon: AppIcons.arrowleft,
                            onPressed: () => Navigator.pop(DialogFactory
                                .navigatorKey.currentState!.context),
                          ),
                          const Spacer(),
                          Center(
                            child: Text(
                              label!,
                              style: TextStyles.appBarTitleStyle,
                            ),
                          ),
                          const Spacer()
                        ]
                      : [
                          RichText(
                            text: TextSpan(
                              text: 'Bem vindo, ',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              children: const [
                                TextSpan(
                                  text: 'Nathan de Aguiar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButtonC(
                            icon: AppIcons.user,
                            onPressed: () => AppRoutes.userPage.pushNamed(),
                          )
                        ],
                ),
              ),
            ),
          ),
          preferredSize: const Size(double.infinity, 90),
        );
}
