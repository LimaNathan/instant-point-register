import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:registro_ponto/src/shared/themes/size_utils.dart';
import 'package:registro_ponto/src/shared/utils/constants/app_routes.dart';
import 'package:registro_ponto/src/shared/utils/extensions/num_ext.dart';
import 'package:registro_ponto/src/shared/utils/extensions/string_ext.dart';
import 'package:registro_ponto/src/widgets/button_custom/button.dart';
import 'package:registro_ponto/src/widgets/custom_dialogs/custom_dialogs.dart';
import 'package:registro_ponto/src/widgets/custom_text_form_field/custom_text_form_field.dart';
import 'package:registro_ponto/src/widgets/lazy_loading/lazy_loading_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withAlpha(130),
                  radius: 775,
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/logo.svg',
                              placeholderBuilder: (context) =>
                                  const LazyLoading(),
                            ),
                            Text(
                              'Registro de ponto eletrônico',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const CustomTextFormField(label: 'Usuário'),
                                StatefulBuilder(
                                  builder: (context, stateSetter) =>
                                      CustomTextFormField(
                                    canShowText: canShowText,
                                    label: 'Senha',
                                    icon: IconButton(
                                      onPressed: () => stateSetter(
                                        () => canShowText = !canShowText,
                                      ),
                                      icon: Icon(
                                        canShowText
                                            ? Iconsax.eye
                                            : Iconsax.eye_slash,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    ),
                                  ),
                                ),
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
