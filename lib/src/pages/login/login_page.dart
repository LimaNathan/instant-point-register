import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registro_ponto/src/components/button_custom/button.dart';
import 'package:registro_ponto/src/components/custom_text_form_field/custom_text_form_field.dart';
import 'package:registro_ponto/src/components/custom_dialogs/custom_dialogs.dart';
import 'package:registro_ponto/src/components/lazy_loading/lazy_loading_widget.dart';
import 'package:registro_ponto/src/utils/constants/app_icons.dart';
import 'package:registro_ponto/src/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/utils/theme/size_utils.dart';
import 'package:registro_ponto/src/utils/theme/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SvgPicture icon = SvgPicture.asset(AppIcons.eye);

  bool canShowText = false;

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => await CustomDialogs.exitDialog(),
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: SizeUtils.height * .3,
                right: -15,
                child: CircleAvatar(
                    backgroundColor: AppColors.shadowPrimaryColor.withAlpha(90),
                    radius: 775),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45.0),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/logo.svg',
                                placeholderBuilder: (context) =>
                                    const LazyLoading()),
                            Text(
                              'Registro de ponto eletrônico',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.darkPrimaryColor,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const CustomTextFormField(label: 'Usuário'),
                                StatefulBuilder(
                                    builder: (context, stateSetter) {
                                  return CustomTextFormField(
                                    canShowText: canShowText,
                                    label: 'Senha',
                                    icon: InkWell(
                                        onTap: () => stateSetter(() {
                                              canShowText = !canShowText;
                                              icon = canShowText
                                                  ? SvgPicture.asset(
                                                      AppIcons.eye)
                                                  : SvgPicture.asset(
                                                      AppIcons.eyeslash);
                                            }),
                                        child: icon),
                                  );
                                }),
                                45.paddingH,
                                Button(
                                  child: Text(
                                    'Entrar',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  onPressed: () =>
                                      AppRoutes.mainPage.pushNamed(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
